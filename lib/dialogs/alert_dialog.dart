import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
    _showIt() {
      return showDialog(
          context: inContext,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
                title: Text("Мы пришли с миром..."),
                content: Center(
                    child:
                        Text('...не беспокойтесь, это всего лишь\nконтрольная проверка')),
                actions: [
                  FlatButton(
                      child: Text('Положитесь на меня, Роман!'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      })
                ]);
          });
    }

    return Scaffold(
      body: Center(
        child: RaisedButton(
          color: Colors.amber,
          child: Text('Окно предупреждения'),
          onPressed: () {
            _showIt();
          },
        ),
      ),
    );
  }
}
