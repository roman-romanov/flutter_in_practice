import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DragDrop extends StatefulWidget {
  @override
  _DragDrop createState() => _DragDrop();
}

class _DragDrop extends State<DragDrop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          DragTarget(
              builder: (
                BuildContext context,
                List<String> accepted,
                List<dynamic> rejected,
              ) {
                return new Container(
                    width: 200, height: 200, color: Colors.lightBlue);
              },
              onAccept: (data) => print(data)),
          Container(height: 50),
          Draggable(
            data: "I was dragged",
            child: Container(width: 100, height: 100, color: Colors.red),
            feedback: Container(width: 100, height: 100, color: Colors.yellow),
          )
        ]),
      ),
    );
  }
}
