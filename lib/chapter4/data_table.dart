import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DataTableApp extends StatefulWidget {
  @override
  _DataTableApp createState() => _DataTableApp();
}

class _DataTableApp extends State<DataTableApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        height: 150,
        child: DataTable(sortColumnIndex: 1, columns: [
          DataColumn(label: Text("Фамилия")),
          DataColumn(label: Text("Имя")),
          DataColumn(label: Text("Отчество")),
          DataColumn(label: Text('Телефон')),
        ], rows: [
          DataRow(cells: [
            DataCell(Text("Верник")),
            DataCell(Text("Анастасия")),
            DataCell(Text('Ивановна'), showEditIcon: true),
            DataCell(Text('+7(999) 123-22-32')),
          ]),
          DataRow(cells: [
            DataCell(Text("Шелест")),
            DataCell(Text("Станислав")),
            DataCell(Text('Викторович')),
            DataCell(Text('+7(999) 123-22-32')),
          ]),
          DataRow(cells: [
            DataCell(Text("Валуев")),
            DataCell(Text("Игорь")),
            DataCell(Text('Владимирович')),
            DataCell(Text('+7(999) 123-22-32'))
          ]),
        ]),
      ),
    ])));
  }
}
