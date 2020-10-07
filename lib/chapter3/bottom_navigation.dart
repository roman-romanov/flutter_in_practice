import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BotomNavigationBarApp extends StatefulWidget {
  @override
  _BotomNavigationBarAppState createState() => _BotomNavigationBarAppState();
}

class _BotomNavigationBarAppState extends State<BotomNavigationBarApp> {
  var _currentPage = 0;
  var _pages = [
    Text('Page1 - Announcement', style: TextStyle(fontSize: 25)),
    Text('Page2 - Birthday', style: TextStyle(fontSize: 25)),
    Text('Page3 - Data', style: TextStyle(fontSize: 25)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _pages.elementAt(_currentPage)),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.announcement),
              label: 'Annoncement', //title: Text('Annoncement'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cake),
              label: 'Birthday', //title: Text('Birthday'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud),
              label: 'Data', //title: Text('Data'),
            ),
          ],
          currentIndex: _currentPage,
          fixedColor: Colors.red,
          onTap: (int inIndex) {
            setState(() {
              _currentPage = inIndex;
            });
          },
        ));
  }
}
