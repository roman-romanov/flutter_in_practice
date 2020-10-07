import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Font Awesome', style: TextStyle(fontSize: 30, color: Colors.red)),
          SizedBox(height: 25),
          Icon(
            FontAwesomeIcons.adversal,
            size: 150,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
