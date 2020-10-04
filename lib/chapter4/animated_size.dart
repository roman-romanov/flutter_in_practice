import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AnimatedSizeApp extends StatefulWidget {
  @override
  _AnimatedSizeApp createState() => _AnimatedSizeApp();
}

class _AnimatedSizeApp extends State<AnimatedSizeApp>
    with TickerProviderStateMixin {
  double _height = 80.0;
  double _width = 80.0;
  var _color = Colors.blue;
  bool _resized = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedSize(
          curve: Curves.bounceInOut,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (_resized) {
                  _resized = false;
                  _color = Colors.blue;
                  _height = 80.0;
                  _width = 80.0;
                } else {
                  _resized = true;
                  _color = Colors.blue;
                  _height = 320.0;
                  _width = 320.0;
                }
              });
            },
            child: Container(
              width: _width,
              height: _height,
              color: _color,
            ),
          ),
          vsync: this,
          duration: Duration(seconds: 1),
        ),
      ],
    ));
  }
}
