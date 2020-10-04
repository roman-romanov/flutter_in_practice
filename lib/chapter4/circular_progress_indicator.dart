import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CircularProgressIndicatorApp extends StatefulWidget {
  @override
  _CircularProgressIndicatorApp createState() =>
      _CircularProgressIndicatorApp();
}

class _CircularProgressIndicatorApp
    extends State<CircularProgressIndicatorApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Circular Progress Indicator',
              style: TextStyle(fontSize: 30, color: Colors.red)),
          SizedBox(height: 40),
          Container(
            height: 100,
            width: 100,
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
