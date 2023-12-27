import 'package:example_app_getx/example_three/example_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleThreeScreen extends StatefulWidget {
  const ExampleThreeScreen({super.key});

  @override
  State<ExampleThreeScreen> createState() => _ExampleThreeScreenState();
}

class _ExampleThreeScreenState extends State<ExampleThreeScreen> {
  //bool notification = false;
  ExampleThreeController exampleThreeController =
      Get.put(ExampleThreeController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
        appBar: AppBar(
          title: const Text('Getx toutorial'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Notification"),
                // Obx(
                //   () => Switch(
                //       value: exampleThreeController.notification.value,
                //       onChanged: (value) {
                //         exampleThreeController.setNotification(value);
                //       }),
                // ),
                Obx(() {
                  return Switch(
                      value: exampleThreeController.notification.value,
                      onChanged: (value) {
                        exampleThreeController.setNotification(value);
                      });
                }),
              ],
            )
          ],
        ));
  }
}
