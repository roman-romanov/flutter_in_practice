import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RotationTransitionApp extends StatefulWidget {
  @override
  _RotationTransitionApp createState() => _RotationTransitionApp();
}

class _RotationTransitionApp extends State<RotationTransitionApp>
    with TickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(
              alignment: Alignment.center,
              turns: _animation,
              child: Text(
                'Rotate',
                style: TextStyle(fontSize: 25, color: Colors.red),
              ),
            ),
            RaisedButton(
              color: Colors.amber,
              child: Text('Rotation Transition'),
              onPressed: () {
                _controller.forward();
              },
            ),
            RaisedButton(
              color: Colors.amber,
              child: Text('Reset'),
              onPressed: () {
                _controller.reset();
              },
            ),
          ],
        ),
      ),
    );
  }
}
