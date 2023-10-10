import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments[1]),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.defaultDialog();
                },
                child: const Text('Dialog')),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Get.changeTheme(ThemeData.light());
                            },
                            child: const Text("Light")),
                        ElevatedButton(
                            onPressed: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                            child: const Text("Dark")),
                      ],
                    ),
                  ));
                },
                child: const Text('Dialog')),
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Back'))
        ],
      ),
    );
  }
}
