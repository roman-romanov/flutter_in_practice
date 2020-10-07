import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SimpleDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
    Future _showIt() async {
      switch (await showDialog(
          context: inContext,
          builder: (BuildContext inContext) {
            return SimpleDialog(
                title: Text("Какое ваше любиоме блюдо?"),
                children: [
                  SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(inContext, "броколли");
                      },
                      child: Text("Броколли")),
                  SimpleDialogOption(
                      onPressed: () {
                        Navigator.pop(inContext, "шашлык");
                      },
                      child: Text("Шашлык")),
                  SimpleDialogOption(
                    onPressed: () {
                      Navigator.pop(inContext, "стейк");
                    },
                    child: Text("Стейк"),
                  ),
                ]);
          })) {
        case "броколли":
          print("Броколли");
          break;
        case 'шашлык':
          print('Шашлык');
          break;
        case "стейк":
          print("Стейк");
          break;
      }
    }

    return Scaffold(
      body: Center(
        child: RaisedButton(
            color: Colors.amber, child: Text("Показать"), onPressed: _showIt),
      ),
    );
  }
}
