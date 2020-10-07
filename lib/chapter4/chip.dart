import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChipApp extends StatefulWidget {
  @override
  _ChipApp createState() => _ChipApp();
}

class _ChipApp extends State<ChipApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          avatar: CircleAvatar(backgroundImage: AssetImage("images/5.jpg")),
          backgroundColor: Colors.green.shade200,
          label: Text("Квокка"),
          labelPadding: EdgeInsets.all(15),
          labelStyle: TextStyle(fontSize: 20, color: Colors.black),
          onDeleted: () {},
          
        ),
      ),
    );
  }
}
