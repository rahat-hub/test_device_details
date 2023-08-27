
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_device_details/module/encrypt_flutter/encrypt_flutter_logic.dart';

class EncryptTablet extends GetView<EncryptFlutterLogic> {

  final SizingInformation? sizingInformation;

  const EncryptTablet({super.key,this.sizingInformation});

  @override
  Widget build(BuildContext context) {

    Get.find<EncryptFlutterLogic>();

    return const Placeholder();
  }
}