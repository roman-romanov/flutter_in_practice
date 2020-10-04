import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PopUpMenuButtonApp extends StatefulWidget {
  @override
  _PopUpMenuButtonApp createState() => _PopUpMenuButtonApp();
}

class _PopUpMenuButtonApp extends State<PopUpMenuButtonApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('PopupMenu Button',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                )),
            PopupMenuButton(onSelected: (String result) {
              print(result);
            }, itemBuilder: (context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem(
                  value: 'копировать',
                  child: Text('Копировать'),
                ),
                PopupMenuItem(
                  value: 'вырезать',
                  child: Text('Вырезать'),
                ),
                PopupMenuItem(
                  value: 'вставить',
                  child: Text('Вставить'),
                ),
              ];
            }),
          ],
        ),
      ),
    );
  }
}
