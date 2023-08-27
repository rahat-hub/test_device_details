import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_device_details/module/encrypt_flutter/encrypt_flutter_logic.dart';

class EncryptMobilePortrait extends GetView<EncryptFlutterLogic> {

  final SizingInformation? sizingInformation;

  const EncryptMobilePortrait({super.key, this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    Get.find<EncryptFlutterLogic>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text('Encrypt Data'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.isDetailsView.value = true;
                  controller.getEncryptData();
                },
                child: const Text("See Encrypt Data"),
              ),
              Obx(() {
                return controller.isDetailsView.value ? Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Text("Encrypt Data : "),
                        title: Text(controller.encryptedData.value),
                      ),
                      const SizedBox(height: 10.0),
                      ListTile(
                        leading: const Text("Decrypted Data : "),
                        title: Text(controller.decryptedData.value),
                      ),
                    ],
                  ),
                ) : const SizedBox();
              }),
            ],
          ),

        ),
      ),
    );
  }
}

class EncryptMobileLandscape extends GetView<EncryptFlutterLogic> {

  final SizingInformation? sizingInformation;

  const EncryptMobileLandscape({super.key, this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    Get.find<EncryptFlutterLogic>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text('Encrypt Data'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("See Encrypt Data"),
          ),
        ),
      ),
    );
  }
}