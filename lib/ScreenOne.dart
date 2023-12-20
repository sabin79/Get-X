import 'package:example_app_getx/ScreenTwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({super.key, this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One" + Get.arguments[1]),
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
                  Get.to(const ScreenTwo());
                },
                child: const Center(
                    child: Text(
                  "go back to Screen Two",
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ))),
          )
        ],
      ),
    );
  }
}
