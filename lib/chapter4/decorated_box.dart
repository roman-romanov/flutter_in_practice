import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecoratedBoxApp extends StatefulWidget {
  @override
  _DecoratedBoxApp createState() => _DecoratedBoxApp();
}

class _DecoratedBoxApp extends State<DecoratedBoxApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 250,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.amber, Colors.amber[900]],
                tileMode: TileMode.repeated,
              ),
            ),
            child: Center(
                child: Text(
              'Decorated Box',
              style: TextStyle(fontSize: 30),
            )),
          ),
        ),
      ),
    );
  }
}
