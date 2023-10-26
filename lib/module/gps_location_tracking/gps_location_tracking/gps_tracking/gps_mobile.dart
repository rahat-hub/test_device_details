import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_device_details/module/gps_location_tracking/gps_location_tracking/gps_location_tracking_logic.dart';

class GPSLocationTrackingMobilePortrait extends GetView<GpsLocationTrackingLogic> {

  final SizingInformation? sizingInformation;

  const GPSLocationTrackingMobilePortrait({super.key,this.sizingInformation});

  @override
  Widget build(BuildContext context) {

    Get.find<GpsLocationTrackingLogic>();

    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            title: const Text("GPS Location"),
          ),
          body: SafeArea(
            child: ListView(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      await controller.determinePosition();
                    },
                    child: const Text("Get GPS Location")
                ),
                const SizedBox(height: 20.0),
                if(controller.position?.latitude != null)
                  Text("Latitude : ${controller.position?.latitude ?? ""}"),
                const SizedBox(height: 20.0),
                if(controller.position?.longitude != null)
                Text("Longitude : ${controller.position?.longitude ?? ""}"),
              ],
            ),
          ),
        ),
      ),
    );
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
