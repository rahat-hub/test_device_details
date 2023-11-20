import 'package:get/get.dart';

import 'table_row_column_test_logic.dart';

class TableRowColumnTestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TableRowColumnTestLogic());
  }
}
