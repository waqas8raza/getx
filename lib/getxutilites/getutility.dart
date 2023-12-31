import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getxutilites/Secondscreen.dart';

class Getxutilites extends StatefulWidget {
  const Getxutilites({super.key});

  @override
  State<Getxutilites> createState() => _GetxutilitesState();
}

class _GetxutilitesState extends State<Getxutilites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Utilites'),
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
                Get.to(Secondscreen(), arguments: ['name', 'waqas']);
              },
              child: const Text('Next Screen'))
        ],
      ),
    );
  }
}
