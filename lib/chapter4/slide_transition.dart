import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SlideTransitionApp extends StatefulWidget {
  @override
  _SlideTransitionApp createState() => _SlideTransitionApp();
}

class _SlideTransitionApp extends State<SlideTransitionApp>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();
    _animation = Tween<Offset>(
      begin: const Offset(-0.5, 0.0),
      end: const Offset(0.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInCubic,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
          builder: (context) => Center(
                child: SlideTransition(
                  position: _animation,
                  child: Text('Moving Text',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w200,
                          color: Colors.red)),
                ),
              )),
    );
  }
}
