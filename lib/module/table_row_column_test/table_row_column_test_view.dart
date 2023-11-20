import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'table_row_column_test_logic.dart';

class TableRowColumnTestPage extends StatelessWidget {

  const TableRowColumnTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.find<TableRowColumnTestLogic>();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Fixed Row and Column Table')),
        body: fixedRowColumnTable(),
      ),
    );
  }







  fixedRowColumnTable(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 10,
          rows: List<DataRow>.generate(
            10,
                (int index) => DataRow(
              cells: List<DataCell>.generate(
                10,
                    (int cellIndex) {
                  // You can change the content of the cells here
                  return DataCell(
                    Text('Cell $index-$cellIndex'),
                  );
                },
              ),
            ),
          ),
          columns: List<DataColumn>.generate(
            10,
                (int index) {
              if (index == 0) {
                // Widget for fixed first column
                return DataColumn(
                  label: Container(
                    width: 100, // Adjust the width as needed
                    child: Text('Column $index'),
                  ),
                );
              } else if (index == 1) {
                // Widget for fixed second column
                return DataColumn(
                  label: Container(
                    width: 100, // Adjust the width as needed
                    child: Text('Column $index'),
                  ),
                );
              } else {
                // Other columns
                return DataColumn(
                  label: Text('Column $index'),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
