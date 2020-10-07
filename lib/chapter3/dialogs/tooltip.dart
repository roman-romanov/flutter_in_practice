import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TooltipApp extends StatefulWidget {
  @override
  _TooltipApp createState() => _TooltipApp();
}

class _TooltipApp extends State<TooltipApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Tooltip(
            message: 'Сообще́ние — наименьший элемент\n' +
                'языка, имеющий идею или смысл,\nпригодный для общения.',
                showDuration: Duration(seconds: 10),
            child: RaisedButton(
              color: Colors.amber,
              child: Text('Если долго удерживать\nкнопку...'),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
