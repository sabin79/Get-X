import 'package:example_app_getx/ScreenOne.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({
    super.key,
  });

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator Page"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.greenAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
          Container(
            height: Get.height * .1,
            width: Get.width * .8,
            color: Colors.greenAccent,
            child: const Center(
              child: Text("Center"),
            ),
          ),
          Container(
              height: Get.height * .1,
              width: Get.width * .8,
              // height: MediaQuery.of(context).size.height * .1,
              color: Colors.yellow,
              child: const Center(
                child: Text("Center"),
              )),
          //     // Center(
          //     //   child: TextButton(
          //     //       onPressed: () {
          //     //         // Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenOne()));
          //     //         // Get.to(const ScreenOne(
          //     //         //   name: "Sabin dahal",
          //     //         // ));
          //     //         Get.toNamed('/screenOne',
          //     //             arguments: ["Sabin Dahal", "Flutter Developer"]);
          //     //       },
          //     //       child: const Center(
          //     //           child: Text(
          //     //         "Go to next screen",
          //     //         style: TextStyle(color: Colors.green, fontSize: 20),
          //     //       ))),
          //     // )
        ],
      ),
    );
  }
}
