import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/logincontroller.dart';

class Loginc extends StatelessWidget {
  Loginc({super.key});
  final logincontroller controller = Get.put(logincontroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailcontroller.value,
            ),
            TextFormField(
              controller: controller.passwordcontroller.value,
            ),
            Obx(
              () => controller.isloading.value == true
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        controller.loginapi();
                      },
                      child: const Text('Login')),
            )
          ],
        ),
      ),
    );
  }
}
