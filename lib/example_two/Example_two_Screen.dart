import 'package:example_app_getx/example_two/example_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleTwoScreen extends StatefulWidget {
  const ExampleTwoScreen({super.key});

  @override
  State<ExampleTwoScreen> createState() => _ExampleTwoScreenState();
}

class _ExampleTwoScreenState extends State<ExampleTwoScreen> {
  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());

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
            Obx(
              () => Container(
                height: 200,
                width: 200,
                color: Colors.redAccent
                    .withOpacity(exampleTwoController.opacity.value),
              ),
            ),
            Obx(
              () => Slider(
                value: exampleTwoController.opacity.value,
                onChanged: (value) {
                  exampleTwoController.SetOpacity(value);
                },
              ),
            )
          ],
        ));
  }
}
