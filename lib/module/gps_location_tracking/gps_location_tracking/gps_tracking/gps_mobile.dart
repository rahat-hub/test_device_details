import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_device_details/module/gps_location_tracking/gps_location_tracking/gps_location_tracking_logic.dart';

class GPSLocationTrackingMobilePortrait extends GetView<GpsLocationTrackingLogic> {

  final SizingInformation? sizingInformation;

  const GPSLocationTrackingMobilePortrait({super.key,this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class GPSLocationTrackingMobileLandscape extends GetView<GpsLocationTrackingLogic> {

  final SizingInformation? sizingInformation;

  const GPSLocationTrackingMobileLandscape({super.key,this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
