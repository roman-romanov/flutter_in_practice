import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridViewCountApp extends StatefulWidget {
  @override
  _GridViewCountApp createState() => _GridViewCountApp();
}

class _GridViewCountApp extends State<GridViewCountApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: GridView.count(
                    padding: EdgeInsets.all(4.0),
                    crossAxisCount: 4,
                    childAspectRatio: 1.0,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                    children: [
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo()),
          GridTile(child: FlutterLogo())
        ]))));
  }
}
