import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SnackBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
    _showIt() {
      Scaffold.of(inContext).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        duration: Duration(seconds: 10),
        content: Text('Мне нравится программировать!'),
        action: SnackBarAction(
            textColor: Colors.white,
            label: 'Свернуть',
            onPressed: () {
              print('Getting fat!');
            }),
      ));
    }

    return Scaffold(
        body: Center(
            child: RaisedButton(
      color: Colors.amber,
      child: Text('Snackbar'),
      onPressed: () {
        _showIt();
      },
    )));
  }
}
