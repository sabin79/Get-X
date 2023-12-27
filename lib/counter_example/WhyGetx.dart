import 'dart:async';
import 'package:get/get.dart';
import 'package:example_app_getx/counter_example/counter_controller.dart';
import 'package:flutter/material.dart';

class GetHomeScreen extends StatefulWidget {
  const GetHomeScreen({super.key});

  @override
  State<GetHomeScreen> createState() => _GetHomeScreenState();
}

class _GetHomeScreenState extends State<GetHomeScreen> {
  final CounterController controller = Get.put(CounterController());
  // int counter = 0;

  @override
  void initState() {
    super.initState();
    // Timer.periodic(const Duration(seconds: 1), (timer) {
    //   x++;
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    // print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx toutorial'),
      ),
      body: Center(
        child: Obx(() {
          //   print("rebuild");

          return Text(
            controller.counter.toString(),
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
