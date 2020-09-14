import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DismissibleApp extends StatefulWidget {
  @override
  _DismissibleApp createState() => _DismissibleApp();
}

class _DismissibleApp extends State<DismissibleApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Dismissible(
            key: GlobalKey(),
            onDismissed: (direction) {
              print('Good Bye!!!');
            },
            child: Container(
              alignment: Alignment.center,
              color: Colors.amber,
              height: 150,
              width: 150,
              child: Text(
                'Swipe Me',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
