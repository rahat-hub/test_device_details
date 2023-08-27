import 'package:encryptor/encryptor.dart';
import 'package:get/get.dart';

class EncryptFlutterLogic extends GetxController {


  var isDetailsView = false.obs;

  var encryptedData = "".obs;
  var decryptedData = "".obs;

  var plainText = 'userName';
  var key = 'F10SOLUTIONSBANGLADESHUSASOFTWAREDIGITALAIRWAREHALLICUPTORN60';

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
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



  getEncryptData() {
    encryptedData.value = Encryptor.encrypt(key, plainText);
    decryptedData.value = Encryptor.decrypt(key, encryptedData.value);

    print(encryptedData.value);
    print(decryptedData.value);
  }
}