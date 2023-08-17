import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_device_details/module/device_details/device_details_logic.dart';

class DeviceDetailsMobilePortrait extends GetView<DeviceDetailsLogic> {
  final SizingInformation? sizingInformation;

  const DeviceDetailsMobilePortrait({super.key, this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Device Details",
              style: TextStyle(fontSize: Theme.of(Get.context!).textTheme.headlineLarge!.fontSize!),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Obx(() {
          return Column(
            children: [
              controller.showDetailsViewCard(name: "Platform", value: controller.devicePlatForm.value),
              controller.showDetailsViewCard(name: "Model", value: controller.androidInfo?.model),
              controller.showDetailsViewCard(name: "Security", value: controller.androidInfo?.version.securityPatch),
              controller.showDetailsViewCard(name: "SerialNumber", value: controller.androidInfo?.serialNumber),
              controller.showDetailsViewCard(name: "BuildNumber", value: controller.androidInfo?.id),
              controller.showDetailsViewCard(name: "Brand", value: controller.androidInfo?.brand),
              controller.showDetailsViewCard(name: "Manufacture", value: controller.androidInfo?.manufacturer),
              controller.showDetailsViewCard(name: "Base OS", value: controller.androidInfo?.version.baseOS ?? "Unknown"),
              controller.showDetailsViewCard(name: "Release", value: controller.androidInfo?.version.release),
              controller.showDetailsViewCard(name: "Code Name", value: controller.androidInfo?.version.codename),
              controller.showDetailsViewCard(name: "Device serial number", value: controller.deviceSerialNumber.value),
              controller.showDetailsViewCard(name: "IP ADDRESS", value: controller.ipAddressString),
            ],
          );
        }),
      ),
    );
  }
}

class DeviceDetailsMobileLandscape extends GetView<DeviceDetailsLogic> {
  final SizingInformation? sizingInformation;

  const DeviceDetailsMobileLandscape({super.key, this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back, size: Theme.of(Get.context!).textTheme.displaySmall!.fontSize!),
          title: Center(
            child: Text(
              "Device Details",
              style: TextStyle(fontSize: Theme.of(Get.context!).textTheme.headlineLarge!.fontSize!),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Obx(() {
          return Column(
            children: [
              controller.showDetailsViewCard(name: "Platform", value: controller.devicePlatForm.value),
              controller.showDetailsViewCard(name: "Model", value: controller.androidInfo?.model),
              controller.showDetailsViewCard(name: "Security", value: controller.androidInfo?.version.securityPatch),
              controller.showDetailsViewCard(name: "Serial Number", value: controller.androidInfo?.serialNumber),
              controller.showDetailsViewCard(name: "BuildNumber", value: controller.androidInfo?.id),
              controller.showDetailsViewCard(name: "Brand", value: controller.androidInfo?.brand),
              controller.showDetailsViewCard(name: "Manufacture", value: controller.androidInfo?.manufacturer),
              controller.showDetailsViewCard(name: "Base OS", value: controller.androidInfo?.version.baseOS ?? "Unknown"),
              controller.showDetailsViewCard(name: "Release", value: controller.androidInfo?.version.release),
              controller.showDetailsViewCard(name: "Code Name", value: controller.androidInfo?.version.codename),
              controller.showDetailsViewCard(name: "Device serial number", value: controller.deviceSerialNumber.value),
            ],
          );
        }),
      ),
    );
  }
}
