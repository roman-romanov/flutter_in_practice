import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AnimatedOpacityApp extends StatefulWidget {
  @override
  _AnimatedOpacityApp createState() => _AnimatedOpacityApp();
}

class _AnimatedOpacityApp extends State<AnimatedOpacityApp> {
  var _isOpacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _isOpacity,
              child: Text(
                'Opacity Text',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RaisedButton(
              color: Colors.amber,
              child: Text('Animated Opacity'),
              onPressed: () {
                _isOpacity = 0.2;
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}
