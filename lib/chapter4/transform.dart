import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransformApp extends StatefulWidget {
  @override
  _TransformApp createState() => _TransformApp();
}

class _TransformApp extends State<TransformApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.amber,
          height: 150,
          width: 250,
          child: Transform(
            alignment: Alignment.center,
            transformHitTests: true,
            transform: Matrix4.skewY(0.4)..rotateZ(-3 / 12.0),
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: Text(
                'Transform widget',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w100,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
