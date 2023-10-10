import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getxutilites/Secondscreen.dart';
import 'package:getx/getxutilites/getutility.dart';
import 'package:getx/view/Opacitc.dart';
import 'package:getx/view/counterscreen.dart';
import 'package:getx/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Loginc(),
      //defining routes
      // getPages: [
      //   GetPage(
      //     name: '/',
      //     page: () => const Getxutilites(),
      //   ),
      //   GetPage(
      //     name: '/Secondscreen',
      //     page: () => const Secondscreen(),
      //   )
      // ],
    );
  }
}
