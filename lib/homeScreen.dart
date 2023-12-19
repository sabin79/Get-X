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
      body: Column(
        children: [
          Card(
            child: ListTile(
                title: const Text("Dialog Alert"),
                subtitle: const Text("Getx dialog alert with getx"),
                onTap: () {
                  Get.defaultDialog(
                      title: "Just say it ",
                      titlePadding: const EdgeInsets.only(top: 40),
                      contentPadding: const EdgeInsets.all(40),
                      // middleText: "Are you sure you want to delete this chat?",
                      confirm: TextButton(
                        onPressed: () {
                          //  Navigator.pop(context);
                          Get.back();
                        },
                        child: const Text("Yes"),
                      ),
                      cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("no"),
                      ),
                      content: const Column(
                        children: [
                          Text(
                              "Just say his/ her name through whom you know me "),
                          // Text("Are you sure you want to delete this chat?"),
                        ],
                      ));
                }),
          ),
          Card(
            child: ListTile(
              title: const Text("Dialog Bottom sheet"),
              subtitle: const Text("Getx dialog alert with getx"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                        leading: const Icon(Icons.light_mode),
                        title: const Text("Light mode"),
                      ),
                      ListTile(
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                        leading: const Icon(Icons.dark_mode),
                        title: const Text("Dark mode"),
                      )
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
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
