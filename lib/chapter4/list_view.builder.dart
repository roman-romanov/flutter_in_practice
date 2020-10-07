import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListViewApp extends StatefulWidget {
  @override
  _ListViewApp createState() => _ListViewApp();
}

class _ListViewApp extends State<ListViewApp> {
  var numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
      itemCount: numbers.length,
      itemBuilder: (BuildContext context, int index) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('${numbers[index]}'),
              leading: Icon(Icons.account_circle),
            ),
          ),
          Divider(),
        ],
      );
    });
  }
}
