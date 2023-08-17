
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_device_details/module/loading_screen/loading_screen_logic.dart';

class LoadingScreenTablet extends GetView<LoadingScreenLogic> {

  final SizingInformation? sizingInformation;
  const LoadingScreenTablet({super.key,this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    Get.find<LoadingScreenLogic>();
    return const SafeArea(
      bottom: true,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoActivityIndicator(
                animating: true,
                radius: 50,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}