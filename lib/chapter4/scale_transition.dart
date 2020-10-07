import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ScaleTransitionApp extends StatefulWidget {
  @override
  _ScaleTransitionApp createState() => _ScaleTransitionApp();
}

class _ScaleTransitionApp extends State<ScaleTransitionApp>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(seconds: 1), vsync: this, value: 0.1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);

    //_controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ScaleTransition(
          alignment: Alignment.center,
          scale: _animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check,
                size: 100,
                color: Colors.green,
              ),
              RaisedButton(
                color: Colors.amber,
                child: Text('Scale Transition'),
                onPressed: () {
                  setState(() {
              _controller.forward();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
