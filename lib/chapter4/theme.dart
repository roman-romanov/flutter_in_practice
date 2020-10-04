import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeApp extends StatefulWidget {
  @override
  _ThemeApp createState() => _ThemeApp();
}

class _ThemeApp extends State<ThemeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: ThemeData(accentColor: Colors.red),
        child: Center(
            child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
            'Theme Sample',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        )),
      ),
    );
  }
}
