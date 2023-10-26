import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_device_details/module/veriable_chack_for_flight_ops/flight_ops/flight_ops/flight_ops_mobile.dart';
import 'package:test_device_details/module/veriable_chack_for_flight_ops/flight_ops/flight_ops/flight_ops_tablet.dart';

import 'flight_ops_logic.dart';

class FlightOpsPage extends StatelessWidget {
  const FlightOpsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.find<FlightOpsLogic>();

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => ScreenTypeLayout.builder(
        mobile: (context) => OrientationLayoutBuilder(
          portrait: (context) => FlightOpsMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) => FlightOpsMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: (context) => FlightOpsTablet(sizingInformation: sizingInformation),
      ),
    );
  }
}
