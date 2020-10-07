import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FormApp extends StatefulWidget {
  @override
  _FormAppState createState() => _FormAppState();
}

class LoginData {
  String username = '';
  String password = '';
}

class _FormAppState extends State {
  LoginData _loginData = LoginData();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey _btnKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Form(
            key: this._formKey,
            child: Column(children: [
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (String inValue) {
                    if (inValue.length == 0) {
                      return "Please enter username";
                    }
                    return null;
                  },
                  onSaved: (String inValue) {
                    this._loginData.username = inValue;
                  },
                  decoration: InputDecoration(
                      hintText: "none@none.com",
                      labelText: "Username (email address)")),
              TextFormField(
                //При вводе пароля символы отображаются на экране в виде точек 
                  obscureText: true,
                  //-------------------------------------------------
                  validator: (String password) {
                    if (password.length < 10) {
                      return "Password must be >=10 in length";
                    }
                    return null;
                  },
                  onSaved: (String inValue) {
                    this._loginData.password = inValue;
                  },
                  decoration: InputDecoration(
                      hintText: "Password", labelText: "Password")),
              RaisedButton(
                  key: _btnKey,
                  child: Text("Log In!"),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      print("Username: ${_loginData.username}");
                      print("Password: ${_loginData.password}");
                      print(((_btnKey.currentWidget as RaisedButton).child as Text).data);
                    }
                  })
            ])),
      ),
    );
  }
}
