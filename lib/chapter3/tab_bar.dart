import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TabBarApp extends StatefulWidget {
  @override
  _TabBarAppState createState() => _TabBarAppState();
}

class _TabBarAppState extends State<TabBarApp> {
  TabBar _tabBar = TabBar(
    tabs: [
      Tab(icon: Icon(Icons.announcement)),
      Tab(icon: Icon(Icons.cake)),
      Tab(icon: Icon(Icons.cloud)),
    ],
  );
  List<String> number = ['1', '2', '3', '4', '5', '6', '7', '8'];
  List<String> _subtitle = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: _tabBar,
        toolbarHeight: 50,
      ),
      body: Center(
          child: TabBarView(children: [
        Center(
          child: ListView.builder(
            itemCount: number.length,
            itemBuilder: (context, int index) {
              return Expanded(
                child: ListTile(
                  title: Text('${number[index]}'),
                  subtitle: Text('${_subtitle[index]}'),
                  //isThreeLine: true,
                  //leading:Divider(),
                ),
              );
            },
          ),
        ),
        Center(child: Text('Birthday', style: TextStyle(fontSize: 25))),
        Center(child: Text('Data', style: TextStyle(fontSize: 25))),
      ])),
    );
  }
}
