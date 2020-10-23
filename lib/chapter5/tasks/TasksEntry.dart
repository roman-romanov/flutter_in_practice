import "package:flutter/material.dart";
import "package:scoped_model/scoped_model.dart";
import "TasksDBWorker.dart";
import '../utils.dart' as utils;
import "TasksModel.dart" show TasksModel, tasksModel;

class TasksEntry extends StatelessWidget {
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _contentEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TasksEntry() {
    _titleEditingController.addListener(() {
      tasksModel.entityBeingEdited.description = _titleEditingController.text;
    });
    _contentEditingController.addListener(() {
      tasksModel.entityBeingEdited.dueDate = _contentEditingController.text;
    });
  }

  Widget build(BuildContext inContext) {
    _titleEditingController.text = tasksModel.entityBeingEdited.description;
    _contentEditingController.text = tasksModel.entityBeingEdited.dueDate;
    return ScopedModel(
      model: tasksModel,
      child: ScopedModelDescendant<TasksModel>(builder:
          (BuildContext inContext, Widget inChild, TasksModel inModel) {
        return Scaffold(
          bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Row(
              children: [
                FlatButton(
                  onPressed: () {
                    FocusScope.of(inContext).requestFocus(FocusNode());
                  },
                  child: Text('Cancel'),
                ),
                Spacer(),
                FlatButton(
                  onPressed: () {
                    _save(inContext, tasksModel);
                  },
                  child: Text('Save'),
                )
              ],
            ),
          ),
          body: Form(
            key: _formKey,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.today),
                  title: Text("Due Date"),
                  subtitle: Text(tasksModel.chosenDate == null
                      ? ""
                      : tasksModel.chosenDate),
                  trailing: IconButton(
                      icon: Icon(Icons.edit),
                      color: Colors.blue,
                      onPressed: () async {
                        String chosenDate = await utils.selectDate(inContext,
                            tasksModel, tasksModel.entityBeingEdited.dueDate);
                        if (chosenDate != null) {
                          tasksModel.entityBeingEdited.dueDate = chosenDate;
                        }
                      }),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  void _save(BuildContext inContext, TasksModel inModel) async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    if (inModel.entityBeingEdited.id == null) {
      await TasksDBWorker.db.create(tasksModel.entityBeingEdited);
    } else {
      await TasksDBWorker.db.update(tasksModel.entityBeingEdited);
    }
    tasksModel.loadData("Tasks", TasksDBWorker.db);
    inModel.setStackIndex(0);
    Scaffold.of(inContext).showSnackBar(SnackBar(
        backgroundColor: Colors.green,
        duration: Duration(seconds: 2),
        content: Text("Task saved")));
  }
}
