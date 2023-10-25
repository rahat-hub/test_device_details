import 'package:get/get.dart';

import 'gps_location_tracking_logic.dart';

class GpsLocationTrackingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GpsLocationTrackingLogic());
  }
}
