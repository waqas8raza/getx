import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/opacitycontroller.dart';

class Opacityc extends StatelessWidget {
  Opacityc({super.key});
  final opacitycontroller controller = Get.put(opacitycontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 400,
              width: double.infinity,
              color: Colors.black.withOpacity(controller.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
              value: controller.opacity.value,
              onChanged: (value) {
                controller.changeopacity(value);
              },
            ),
          ),
          Obx(
            () => Switch(
              value: controller.setnotification.value,
              onChanged: (value) {
                controller.setnotifications(value);
              },
            ),
          ),
          Column(
            children: [
              Obx(() => CircleAvatar(
                  backgroundImage: controller.imagepath.isNotEmpty
                      ? FileImage(
                          File(controller.imagepath.toString()),
                        )
                      : null)),
              ElevatedButton(
                  onPressed: () {
                    controller.getimage();
                  },
                  child: const Text('Pick Image'))
            ],
          ),
        ],
      ),
    );
  }
}
