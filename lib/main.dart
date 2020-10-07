import 'package:flutter/material.dart';
//  import 'chapter3/_chapter3.dart';
  //import 'chapter4/_chapter4.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter in Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //Theme.of(context).copyWith(accentColor: Colors.red),
      home: DefaultTabController(
        length: 3,
        child: Center(),//Chapter3(title: 'Flutter in Practice'),
                 //Chapter4(title: 'Flutter in Practice'),
      ),
    );
  }
}
