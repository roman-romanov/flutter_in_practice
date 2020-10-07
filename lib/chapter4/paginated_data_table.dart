import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PaginatedDataTableApp extends StatefulWidget {
  @override
  _PaginatedDataTableApp createState() => _PaginatedDataTableApp();
}

class _PaginatedDataTableApp extends State<PaginatedDataTableApp> {
  var _rowPerPage = PaginatedDataTable.defaultRowsPerPage;
  var _dataSource = PaginatedDataSourceApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PaginatedDataTable(
        header: Text('Список сотрудников'),
        source: _dataSource,
        rowsPerPage: _rowPerPage,
        columns: [
          DataColumn(label: Text("Фамилия")),
          DataColumn(label: Text("Имя")),
          DataColumn(label: Text("Отчество")),
          DataColumn(label: Text('Адрес')),
          DataColumn(label: Text('Телефон')),
        ],
        onRowsPerPageChanged: (r) {
          setState(() {
            _rowPerPage = r;
          });
        },
      ),
    ));
  }
}

class PaginatedDataSourceApp extends DataTableSource {
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text('ячейка1$index')),
      DataCell(Text('ячейка2$index')),
      DataCell(Text('ячейка3$index')),
      DataCell(Text('ячейка4$index')),
      DataCell(Text('ячейка5$index')),
    ]);
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 100;

  @override
  int get selectedRowCount => 0;
}
