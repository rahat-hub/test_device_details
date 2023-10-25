import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:test_device_details/module/veriable_chack_for_flight_ops/flight_ops/flight_ops_logic.dart';

class FlightOpsTablet extends GetView<FlightOpsLogic> {

  final SizingInformation? sizingInformation;
  const FlightOpsTablet({super.key, this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    Get.find<FlightOpsLogic>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Flight OPS Documents",
              style: TextStyle(fontSize: Theme.of(Get.context!).textTheme.headlineLarge!.fontSize!),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Obx(() {
          return ListView(
            children: [
              TreeView(
                treeController: controller.treeController.value,
                key: const Key("A"),
                nodes: controller.nodes,
              ),
            ],
          );
        }),
      ),
    );
  }
}