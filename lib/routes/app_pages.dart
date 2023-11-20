

import 'package:get/get.dart';
import 'package:test_device_details/module/device_details/device_details_binding.dart';
import 'package:test_device_details/module/device_details/device_details_view.dart';
import 'package:test_device_details/module/encrypt_flutter/encrypt_flutter_binding.dart';
import 'package:test_device_details/module/encrypt_flutter/encrypt_flutter_view.dart';
import 'package:test_device_details/module/gps_location_tracking/gps_location_tracking/gps_location_tracking_binding.dart';
import 'package:test_device_details/module/gps_location_tracking/gps_location_tracking/gps_location_tracking_view.dart';
import 'package:test_device_details/module/loading_screen/loading_screen_binding.dart';
import 'package:test_device_details/module/loading_screen/loading_screen_view.dart';
import 'package:test_device_details/module/table_row_column_test/table_row_column_test_binding.dart';
import 'package:test_device_details/module/table_row_column_test/table_row_column_test_view.dart';
import 'package:test_device_details/module/veriable_chack_for_flight_ops/flight_ops/flight_ops_binding.dart';
import 'package:test_device_details/module/veriable_chack_for_flight_ops/flight_ops/flight_ops_view.dart';

import 'app_routes.dart';

class AppPages {
  static const initial = Routes.loadingScreen;

  static final routes = [
    GetPage(
        name: Routes.loadingScreen,
        page: () => const LoadingScreenPage(),
        bindings: [
          LoadingScreenBinding()
        ]
    ),
    GetPage(
        name: Routes.deviceDetails,
        page: () => const DeviceDetailsPage(),
        bindings: [
          DeviceDetailsBinding()
        ]
    ),

    GetPage(
        name: Routes.encryptDevice,
        page: () => const EncryptFlutterPage(),
        bindings: [
          EncryptFlutterBinding()
        ]
    ),

    GetPage(
        name: Routes.flightOps,
        page: () => const FlightOpsPage(),
        bindings: [
          FlightOpsBinding()
        ]
    ),

    GetPage(
        name: Routes.flightGPSTracking,
        page: () => const GpsLocationTrackingPage(),
        bindings: [
          GpsLocationTrackingBinding()
        ]
    ),

    GetPage(
        name: Routes.tableRowColumnTest,
        page: () => const TableRowColumnTestPage(),
        bindings: [
          TableRowColumnTestBinding()
        ]
    ),


  ];
}