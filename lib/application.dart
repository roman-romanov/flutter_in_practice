import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'bottom_navigation.dart';
//import 'stepper.dart';
//import 'tab_bar.dart';
//import 'form.dart';
//import 'checkbox.dart';
//import 'date.dart';
import 'dismissible.dart';

class Application extends StatefulWidget {
  final String title;
  Application({Key key, this.title}) : super(key: key);
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                  color: Colors.amber,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('First', style: TextStyle(fontSize: 25)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                  color: Colors.amber,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Second', style: TextStyle(fontSize: 25)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                  color: Colors.amber,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Third', style: TextStyle(fontSize: 25)),
                  )),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Text('Flutter in Practice'),
      ),
      body: Column(
        children: [
          //Expanded(child: TabBarApp()),
          //Expanded(child: StepperApp()),
          //Expanded(child:BotomNavigationBarApp()),
          //Expanded(child: FormApp()),
          //Expanded(child:CheckBoxApp()),
          //Expanded(child: DataApp()),
          Expanded(child: DismissibleApp()),
        ],
      ),
    );
  }
}
