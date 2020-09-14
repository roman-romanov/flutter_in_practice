import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CheckBoxApp extends StatefulWidget {
  CheckBoxApp({Key key}) : super(key: key);
  @override
  _CheckBoxAppState createState() => _CheckBoxAppState();
}

class _CheckBoxAppState extends State {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _checkboxValue = false;
  bool _switchValue = false;
  double _sliderValue = .5;
  int _radioValue = 1;
  Color _colorAmber = Colors.amber;
  Color _colorBlack = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 120,
                      color: _colorAmber,
                      child: _checkboxValue
                          ? Text(
                              'Good',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
                            )
                          : Text('')),
                  SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    width: 120,
                    height: 120,
                    color: _switchValue ? _colorBlack : _colorAmber,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 120,
                    child: Checkbox(
                      value: _checkboxValue,
                      onChanged: (bool inValue) {
                        setState(() {
                          _checkboxValue = inValue;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 120,
                    alignment: Alignment.center,
                    child: Switch(
                      value: _switchValue,
                      onChanged: (bool inValue) {
                        setState(() {
                          _switchValue = inValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Slider(
                      min: 0,
                      max: 20,
                      value: _sliderValue,
                      onChanged: (inValue) {
                        setState(() {
                          _sliderValue = inValue;
                        });
                      },
                    ),
              Row(
                children: [
                  Radio(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: (int inValue) {
                        setState(() {
                          _radioValue = inValue;
                        });
                      }),
                  Text('Option1'),
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: (int inValue) {
                        setState(() {
                          _radioValue = inValue;
                        });
                      }),
                  Text('Option2'),
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: 3,
                      groupValue: _radioValue,
                      onChanged: (int inValue) {
                        setState(() {
                          _radioValue = inValue;
                        });
                      }),
                  Text('Option3'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
