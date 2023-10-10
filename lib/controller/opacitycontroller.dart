import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class opacitycontroller extends GetxController {
  RxBool setnotification = false.obs;
  RxString imagepath = ''.obs;
  RxDouble opacity = 0.1.obs;
  changeopacity(double value) {
    opacity.value = value;
  }

  setnotifications(bool value) {
    setnotification.value = value;
  }

  Future getimage() async {
    final ImagePicker pickimage = ImagePicker();
    final image = await pickimage.pickImage(source: ImageSource.camera);
    if (image != null) {
      imagepath.value = image.path.toString();
    }
  }
}
