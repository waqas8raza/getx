import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/countercontroller.dart';

class Counterscreen extends StatelessWidget {
  Counterscreen({super.key});
  final countercontroller controller = Get.put(countercontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Text(controller.counter.toString())),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}
