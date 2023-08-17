import 'package:get/get.dart';

import 'device_details_logic.dart';

class DeviceDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeviceDetailsLogic());
  }
}
