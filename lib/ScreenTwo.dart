import 'package:example_app_getx/ScreenOne.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.greenAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  // Get.to(const ScreenOne());
                  Get.back();
                  Get.back();
                },
                child: const Center(
                    child: Text(
                  "Go back",
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ))),
          )
        ],
      ),
    );
  }
}
