import 'package:example_app_getx/login_signup/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LOginController controller = Get.put(LOginController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LogIn , SignUp with getx"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 44, 176, 194),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailcontroller.value,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: controller.passwordcontroller.value,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(
              height: 50,
            ),
            Obx(() {
              return InkWell(
                onTap: () {
                  controller.loginApi();
                },
                child: controller.loading.value
                    ? const CircularProgressIndicator()
                    : Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 122, 177, 204),
                        ),
                        child: const Center(
                            child: Text(
                          "LogIn",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ))),
              );
            })
          ],
        ),
      ),
    );
  }
}
