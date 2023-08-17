import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_ip_address/get_ip_address.dart';
import 'package:unique_identifier/unique_identifier.dart';


class DeviceDetailsLogic extends GetxController {

  var devicePlatForm = "".obs;

  var deviceSerialNumber = "".obs;

  dynamic ipAddressString;

  var ipAddress = IpAddress(type: RequestType.json);


  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  AndroidDeviceInfo? androidInfo;


  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getDeviceInformation();

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

  getDeviceInformation() async{
    androidInfo = await deviceInfo.androidInfo;

    dynamic data = await ipAddress.getIpAddress();

    ipAddressString = data.toString();

    try{
      deviceSerialNumber.value = (await UniqueIdentifier.serial)!;

    } on PlatformException catch (e){
      deviceSerialNumber.value = "Not Found";
      print(e.message);
    }
  }


  showDetailsViewCard({String? name,String? value}){
    return Card(
      color: Colors.green.withOpacity(0.4),
      child: ListTile(
        leading: Text("$name : ",style: TextStyle(fontSize: Theme.of(Get.context!).textTheme.titleLarge!.fontSize!)),
        title: Text("$value",style: TextStyle(fontSize: Theme.of(Get.context!).textTheme.titleMedium!.fontSize!)),
      )
    );
  }

}
