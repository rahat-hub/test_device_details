import 'package:get/get.dart';

import 'encrypt_flutter_logic.dart';

class EncryptFlutterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EncryptFlutterLogic());
  }
}
