import 'package:get/get.dart';

import 'loading_screen_logic.dart';

class LoadingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadingScreenLogic());
  }
}
