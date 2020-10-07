import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BottomSheetApp extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
    _showIt() {
      showModalBottomSheet(
          context: inContext,
          builder: (BuildContext inContext) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text('Ваше любимое домашнее животное:',
                      style: TextStyle(fontSize: 25)),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(inContext).pop();
                  },
                  child: Text('Собака'),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(inContext).pop();
                  },
                  child: Text('Кошка'),
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.of(inContext).pop();
                    },
                    child: Text('Попугай'))
              ],
            );
          });
    }

    return Scaffold(
      body: Center(
        child: RaisedButton(
          color: Colors.amber,
          onPressed: () {
            _showIt();
          },
        ),
      ),
    );
  }
}
