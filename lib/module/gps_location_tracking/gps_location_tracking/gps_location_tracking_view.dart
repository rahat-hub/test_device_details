import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'gps_location_tracking_logic.dart';
import 'gps_tracking/gps_mobile.dart';
import 'gps_tracking/gps_tablet.dart';

class GpsLocationTrackingPage extends StatelessWidget {
  const GpsLocationTrackingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.find<GpsLocationTrackingLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => ScreenTypeLayout.builder(
        mobile: (context) => OrientationLayoutBuilder(
          portrait: (context) => GPSLocationTrackingMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) => GPSLocationTrackingMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: (context) => GPSLocationTrackingTablet(sizingInformation: sizingInformation),
      ),
    );
  }
}
