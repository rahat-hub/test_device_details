import 'package:get/get.dart';

import 'flight_ops_logic.dart';

class FlightOpsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlightOpsLogic());
  }
}
