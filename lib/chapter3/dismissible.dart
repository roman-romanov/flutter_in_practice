import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class DismissibleApp extends StatefulWidget {
  @override
  _DismissibleApp createState() => _DismissibleApp();
}

class _DismissibleApp extends State<DismissibleApp> {
  Verse verse = Verse();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dismissible(
        key: GlobalKey(),
        onDismissed: (direction) {},
        child: ListView.builder(
          itemCount: verse.list.length,
          itemBuilder: (context, int index) {
            return Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                    title: Text('${verse.list[index]}',
                        style: TextStyle(fontSize: 25))));
          },
        ),
      ),
    );
  }
}

class Verse {
  List list = [
    'Я помню чудное мгновенье:',
    'Передо мной явилась ты,',
    'Как мимолетное виденье,',
    'Как гений чистой красоты.'
  ];
}
