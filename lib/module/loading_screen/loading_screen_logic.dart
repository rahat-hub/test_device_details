import 'package:get/get.dart';
import 'package:test_device_details/routes/app_routes.dart';

class LoadingScreenLogic extends GetxController {



  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await Future.delayed(const Duration(seconds: 2));
    await Get.offNamed(Routes.deviceDetails);

  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }


}
