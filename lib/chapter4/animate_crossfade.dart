import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AnimatedCrossFadeApp extends StatefulWidget {
  @override
  _AnimatedCrossFadeApp createState() => _AnimatedCrossFadeApp();
}

class _AnimatedCrossFadeApp extends State<AnimatedCrossFadeApp> {
  var _showFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      AnimatedCrossFade(
        duration: Duration(seconds: 2),
        firstChild: FlutterLogo(
          style: FlutterLogoStyle.horizontal,
          size: 100,
        ),
        secondChild: FlutterLogo(
          style: FlutterLogoStyle.stacked,
          size: 100,
        ),
        crossFadeState:
            _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
      RaisedButton(
          child: Text('Cross-Fade!'),
          onPressed: () {
            _showFirst = false;
            setState(() {});
          })
    ])));
  }
}
