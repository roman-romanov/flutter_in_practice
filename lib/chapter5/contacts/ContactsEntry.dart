import 'dart:io';

import "package:flutter/material.dart";
import 'package:image_picker/image_picker.dart';
import "package:scoped_model/scoped_model.dart";
import "ContactsDBWorker.dart";
import '../utils.dart' as utils;
import "ContactsModel.dart" show ContactsModel, contactsModel;

class ContactsEntry extends StatelessWidget {
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _contentEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ContactsEntry() {
    _titleEditingController.addListener(() {
      contactsModel.entityBeingEdited.description =
          _titleEditingController.text;
    });
    _contentEditingController.addListener(() {
      contactsModel.entityBeingEdited.dueDate = _contentEditingController.text;
    });
  }

  Widget build(BuildContext inContext) {
    TextEditingController _nameEditingController = TextEditingController();
    TextEditingController _phoneEditingController = TextEditingController();
    TextEditingController _emailEditingController = TextEditingController();

    _titleEditingController.text = contactsModel.entityBeingEdited.description;
    _contentEditingController.text = contactsModel.entityBeingEdited.dueDate;
    return ScopedModel(
        model: contactsModel,
        child: ScopedModelDescendant<ContactsModel>(builder:
            (BuildContext inContext, Widget inChild, ContactsModel inModel) {
          File avatarFile = File(join(utils.docsDir.path, "avatar"));
          if (avatarFile.existsSync() == false) {
            if (inModel.entityBeingEdited != null &&
                inModel.entityBeingEdited.id != null) {
              avatarFile = File(join(
                  utils.docsDir.path, inModel.entityBeingEdited.id.toString()));
            }
          }
          return Scaffold(
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Row(children: [
                    FlatButton(
                        child: Text("Cancel"),
                        onPressed: () {
                          File avatarFile =
                              File(join(utils.docsDir.path, "avatar"));
                          if (avatarFile.existsSync()) {
                            avatarFile.deleteSync();
                          }
                          FocusScope.of(inContext).requestFocus(FocusNode());
                          inModel.setStackIndex(0);
                        }),
                    Spacer(),
                    FlatButton(
                        child: Text("Save"),
                        onPressed: () {
                          _save(inContext, inModel);
                        })
                  ])),
              body: Form(
                key: _formKey,
                child: ListView(children: [
                  ListTile(
                      title: avatarFile.existsSync()
                          ? Image.file(avatarFile)
                          : Text("No avatar image for this contact"),
                      trailing: IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.blue,
                          onPressed: () => _selectAvatar(inContext))),
                  ListTile(
                      leading: Icon(Icons.person),
                      title: TextFormField(
                          decoration: InputDecoration(hintText: "Name"),
                          controller: _nameEditingController,
                          validator: (String inValue) {
                            if (inValue.length == 0) {
                              return "Please enter a name";
                            }
                            return null;
                          })),
                  ListTile(
                      leading: Icon(Icons.phone),
                      title: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(hintText: "Phone"),
                          controller: _phoneEditingController)),
                  ListTile(
                      leading: Icon(Icons.email),
                      title: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(hintText: "Email"),
                          controller: _emailEditingController)),
                  ListTile(
                      leading: Icon(Icons.today),
                      title: Text("Birthday"),
                      subtitle: Text(contactsModel.chosenDate == null
                          ? ""
                          : contactsModel.chosenDate),
                      trailing: IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.blue,
                          onPressed: () async {
                            String chosenDate = await utils.selectDate(
                                inContext,
                                contactsModel,
                                contactsModel.entityBeingEdited.birthday);
                            if (chosenDate != null) {
                              contactsModel.entityBeingEdited.birthday =
                                  chosenDate;
                            }
                          })),
                ]),
              ));
        }));
  }

  void _save(BuildContext inContext, ContactsModel inModel) async {
    var id = await ContactsDBWorker.db.create(contactsModel.entityBeingEdited);

    File avatarFile = File(join(utils.docsDir.path, "avatar"));
    if (avatarFile.existsSync()) {
      avatarFile.renameSync(join(utils.docsDir.path, id.toString()));
    }
    if (!_formKey.currentState.validate()) {
      return;
    }
    if (inModel.entityBeingEdited.id == null) {
      await ContactsDBWorker.db.create(contactsModel.entityBeingEdited);
    } else {
      await ContactsDBWorker.db.update(contactsModel.entityBeingEdited);
    }
    contactsModel.loadData("Contacts", ContactsDBWorker.db);
    inModel.setStackIndex(0);
    Scaffold.of(inContext).showSnackBar(SnackBar(
        backgroundColor: Colors.green,
        duration: Duration(seconds: 2),
        content: Text("Contacts saved")));
  }

  Future _selectAvatar(BuildContext inContext) {
    return showDialog(
        context: inContext,
        builder: (BuildContext inDialogContext) {
          return AlertDialog(
              content: SingleChildScrollView(
                  child: ListBody(children: [
            GestureDetector(
                child: Text("Take a picture"),
                onTap: () async {
                  var cameraImage =
                      await ImagePicker.pickImage(source: ImageSource.camera);
                  if (cameraImage != null) {
                    cameraImage.copySync(join(utils.docsDir.path, "avatar"));
                    contactsModel.triggerRebuild();
                  }
                  Navigator.of(inDialogContext).pop();
                }),
            GestureDetector(
                child: Text("Select From Gallery"),
                onTap: () async {
                  var galleryImage =
                      await ImagePicker.pickImage(source: ImageSource.gallery);
                  if (galleryImage != null) {
                    galleryImage.copySync(join(utils.docsDir.path, "avatar"));
                    contactsModel.triggerRebuild();
                  }
                  Navigator.of(inDialogContext).pop();
                })
          ])));
        });
  }
}
