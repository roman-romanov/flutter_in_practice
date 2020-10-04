import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SizeTransitionApp extends StatefulWidget {
  @override
  _SizeTransitionApp createState() => _SizeTransitionApp();
}

class _SizeTransitionApp extends State<SizeTransitionApp>
    with TickerProviderStateMixin {
  Text _text = Text('Size Transition');
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(seconds: 1), vsync: this, value: 0.1);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);

    // _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizeTransition(
            sizeFactor: _animation,
            child: Center(
                child: Text('Animation Text',
                    style: TextStyle(fontSize: 30, color: Colors.red))),
          ),
          RaisedButton(
            color: Colors.amber,
            child: _text,
            onPressed: () {
              setState(() {
                _controller.fling();
              });
            },
          )
        ],
      ),
    );
  }
}
