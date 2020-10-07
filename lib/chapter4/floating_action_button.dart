import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FloatingActionButtonApp extends StatefulWidget {
  @override
  _FloatingActionButtonApp createState() => _FloatingActionButtonApp();
}

class _FloatingActionButtonApp extends State<FloatingActionButtonApp> {
  String _text = 'Press Button';
  Icon _icon = Icon(Icons.add_box, color: Colors.blue, size: 50.0);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        foregroundColor: Colors.yellow,
        shape: RoundedRectangleBorder(),
        onPressed: _changetext,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_text,
                  style: TextStyle(
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      color: Colors.red)),
              _icon,
            ],
          ),
        ),
      ),
    );
  }

  _changetext() {
    setState(() {
      if (_text.startsWith('P')) {
        _text = 'Button is Pressed';
        _icon = Icon(Icons.check, color: Colors.blue, size: 50.0);
      } else {
        _text = 'Press Button';
        _icon = Icon(Icons.check, color: Colors.grey, size: 50.0);
      }
    });
  }
}
