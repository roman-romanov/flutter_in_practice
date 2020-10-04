import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TableApp extends StatefulWidget {
  @override
  _TableApp createState() => _TableApp();
}

class _TableApp extends State<TableApp> {
  @override
  Widget build(BuildContext inContext) {
    return Scaffold(
        body: Column(children: [
      Container(height: 100),
      Table(
          border: TableBorder(
              top: BorderSide(width: 2),
              bottom: BorderSide(width: 2),
              left: BorderSide(width: 2),
              right: BorderSide(width: 2)),
          children: [
            TableRow(children: [
              Center(
                child: Padding(padding: EdgeInsets.all(10), child: Text("1")),
              ),
              Center(
                  child:
                      Padding(padding: EdgeInsets.all(10), child: Text("2"))),
              Center(
                  child: Padding(padding: EdgeInsets.all(10), child: Text("3")))
            ])
          ])
    ]));
  }
}
