import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedContainerApp extends StatefulWidget {
  @override
  _AnimatedContainerApp createState() => _AnimatedContainerApp();
}

class _AnimatedContainerApp extends State<AnimatedContainerApp> {
  var _color = Colors.amber;
  var _height = 200.0;
  var _width = 200.0;

  var isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            color: _color,
            width: _width,
            height: _height,
          ),
          RaisedButton(
              child: Text('Animate'),
              onPressed: () {
                _color = Colors.red;
                _height = 400.0;
                _width = 400.0;
                setState(() {});
              }),
        ],
      ),
    );
  }
}
