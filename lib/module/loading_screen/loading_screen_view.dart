import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_device_details/module/loading_screen/loading_device/loading_tablet.dart';

import 'loading_device/loading_mobile.dart';

class LoadingScreenPage extends StatelessWidget {
  const LoadingScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => ScreenTypeLayout.builder(
        mobile: (context) => OrientationLayoutBuilder(
          portrait: (context) => LoadingScreenMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) => LoadingScreenMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: (context) => LoadingScreenTablet(sizingInformation: sizingInformation),
      ),
    );
  }
}
