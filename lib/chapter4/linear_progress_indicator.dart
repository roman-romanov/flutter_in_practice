import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LinearProgressIndicatorApp extends StatefulWidget {
  @override
  _LinearProgressIndicatorApp createState() => _LinearProgressIndicatorApp();
}

class _LinearProgressIndicatorApp extends State<LinearProgressIndicatorApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Linear Progress Indicator',
              style: TextStyle(fontSize: 30, color: Colors.red)),
          SizedBox(height: 40),
          Container(
            height: 1,
            width: 250,
            child: LinearProgressIndicator(
              value: .25,
              backgroundColor: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
