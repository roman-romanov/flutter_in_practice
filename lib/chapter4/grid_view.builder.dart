import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridViewBUilderApp extends StatefulWidget {
  @override
  _GridViewBUilderApp createState() => _GridViewBUilderApp();
}

class _GridViewBUilderApp extends State<GridViewBUilderApp> {
  static List items;
  var number = 0;

  @override
  void initState() {
    super.initState();
    items = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];
  }

  void incrementNumber() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6.0,
              vertical: 6.0,
            ),
            child: Card(
              color: Colors.amber,
              child: Text('${items[index]}'),
            ),
          );
        });
  }
}
