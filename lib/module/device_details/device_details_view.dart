import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'details_device/details_mobile.dart';
import 'details_device/details_tablet.dart';

class DeviceDetailsPage extends StatelessWidget {
  const DeviceDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => ScreenTypeLayout.builder(
        mobile: (context) => OrientationLayoutBuilder(
          portrait: (context) => DeviceDetailsMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) => DeviceDetailsMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: (context) => DeviceDetailsTablet(sizingInformation: sizingInformation),
      ),
    );
  }
}
