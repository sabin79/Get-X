import 'dart:io';

import 'package:example_app_getx/image_picker/image_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePickerController controller = Get.put(ImagePickerController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Getx Image Picker"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                    radius: 150,
                    backgroundImage: controller.imagePath.isNotEmpty
                        ? FileImage(File(controller.imagePath.toString()))
                        : null),
              ),
              TextButton(
                  onPressed: () {
                    controller.getImage();
                  },
                  child: const Center(
                    child: Text(
                      "Pick Image",
                      style: TextStyle(fontSize: 25),
                    ),
                  )),
            ],
          );
        }));
  }
}
