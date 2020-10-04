import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AnimatedPositionApp extends StatefulWidget {
  @override
  _AnimatedPositionApp createState() => _AnimatedPositionApp();
}

class _AnimatedPositionApp extends State<AnimatedPositionApp> {
  var showText = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            top: showText ? 40.0 : 20.0,
            right: 10.0,
            child: showMessage(),
          ),
          SizedBox(height: 200),
          RaisedButton(
              color: Colors.amber,
              child: Text(
                'Animated Position',
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () {
                setState(() {
                  showText = true;
                });
              })
        ],
      ),
    );
  }
}

Widget showMessage() {
  return Text('Position', style: TextStyle(fontSize: 25));
}
