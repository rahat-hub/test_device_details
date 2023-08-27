import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_device_details/module/encrypt_flutter/encrypt_device/encrypt_tablet.dart';

import 'encrypt_device/encrypt_mobile.dart';
import 'encrypt_flutter_logic.dart';

class EncryptFlutterPage extends StatelessWidget {
  const EncryptFlutterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.find<EncryptFlutterLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => ScreenTypeLayout.builder(
        mobile: (context) => OrientationLayoutBuilder(
          portrait: (context) => EncryptMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) => EncryptMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: (context) => EncryptTablet(sizingInformation: sizingInformation),
      ),
    );
  }
}
