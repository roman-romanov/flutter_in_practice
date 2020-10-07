import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpacityApp extends StatefulWidget {
  @override
  _OpacityApp createState() => _OpacityApp();
}

class _OpacityApp extends State<OpacityApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Theme Sample', style: TextStyle(fontSize: 30)),
            Opacity(
                opacity: .25,
                child: Text('Opacity Text', style: TextStyle(fontSize: 30))),
          ],
        ),
      )),
    );
  }
}
