import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'tab_bar.dart';
// import 'stepper.dart';
// import 'bottom_navigation.dart';
// import 'form.dart';
// import 'checkbox.dart';
// import 'dialogs/tooltip.dart';
// import 'dialogs/simple_dialog.dart';
// import 'dialogs/alert_dialog.dart';
// import 'dialogs/snackbar.dart';
// import 'dismissible.dart';
// import 'date.dart';
// import 'dialogs/bottom_sheet.dart';

class Chapter3 extends StatefulWidget {
  final String title;
  Chapter3({Key key, this.title}) : super(key: key);
  @override
  _Chapter3State createState() => _Chapter3State();
}

class _Chapter3State extends State<Chapter3> {
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
          // Expanded(child: TabBarApp()),
          // Expanded(child: StepperApp()),
          // Expanded(child: BotomNavigationBarApp()),
          // Expanded(child: FormApp()),
          // Expanded(child: CheckBoxApp()),
          // Expanded(child: DataApp()),
          // Expanded(child: DismissibleApp()),
          // Expanded(child: TooltipApp()),
          // Expanded(child: SimpleDialogApp()),
          // Expanded(child: AlertDialogApp()),
          // Expanded(child: SnackBarApp()),
          // Expanded(child: BottomSheetApp()),
        ],
      ),
    );
  }
}
