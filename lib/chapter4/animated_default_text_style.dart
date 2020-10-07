import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AnimatedDefaultTextStyleApp extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleApp createState() => _AnimatedDefaultTextStyleApp();
}

class _AnimatedDefaultTextStyleApp extends State<AnimatedDefaultTextStyleApp> {
  Color _color = Colors.red;
  var _fontSize = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(seconds: 1),
              style: TextStyle(
                color: _color,
                fontSize: _fontSize,
              ),
              child: Text("I'am some text"),
            ),
            RaisedButton(
                child: Text("Enhance! Enhance! Enhance!"),
                onPressed: () {
                  _color = Colors.blue;
                  _fontSize = 40.0;
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}
