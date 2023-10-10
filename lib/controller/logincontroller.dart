import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class logincontroller extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;
  RxBool isloading = false.obs;
  void loginapi() async {
    isloading.value = true;
    try {
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {
            'email': emailcontroller.value.text,
            'password': passwordcontroller.value.text
          });
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        isloading.value = false;
        Get.snackbar('Log in Successful', '');
      } else {
        isloading.value = false;
        Get.snackbar('Login failed', '');
      }
    } catch (e) {
      isloading.value = false;
      Get.snackbar('Exception', e.toString());
      e..toString();
    }
  }
}
