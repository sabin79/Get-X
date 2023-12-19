import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Getx-Demo",
          style: TextStyle(
              color: Colors.green, fontSize: 45, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45),
        ),
        onPressed: () {
          Get.snackbar(
            "Sabin",
            "lets go",
            backgroundColor: Colors.lightBlueAccent,
            snackPosition: SnackPosition.TOP,
            snackStyle: SnackStyle.FLOATING,
            icon: const Icon(Icons.add),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
