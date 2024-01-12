

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_device_details/module/table_row_column_test/table_row_column_test_logic.dart';

class TableRowMobilePortrait extends GetView<TableRowColumnTestLogic> {

  final SizingInformation? sizingInformation;

  const TableRowMobilePortrait({super.key, this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Table Data Test",
              style: TextStyle(fontSize: Theme.of(Get.context!).textTheme.headlineLarge!.fontSize!),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Obx(() {
          return ListView(
            children: [
              controller.indexDataViewReturn(sizingInformation: sizingInformation)
            ],
          );
        }),
      ),
    );
  }
}