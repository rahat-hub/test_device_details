

import 'package:get/get.dart';
import 'package:test_device_details/module/device_details/device_details_binding.dart';
import 'package:test_device_details/module/device_details/device_details_view.dart';
import 'package:test_device_details/module/encrypt_flutter/encrypt_flutter_binding.dart';
import 'package:test_device_details/module/encrypt_flutter/encrypt_flutter_view.dart';
import 'package:test_device_details/module/loading_screen/loading_screen_binding.dart';
import 'package:test_device_details/module/loading_screen/loading_screen_view.dart';

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

  ];
}