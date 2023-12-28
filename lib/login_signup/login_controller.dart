import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LOginController extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final passwordcontroller = TextEditingController().obs;

  RxBool loading = false.obs;

  void loginApi() async {
    loading.value = true;
    try {
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {
            'email': emailcontroller.value.text,
            'password': passwordcontroller.value.text
          });

      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        loading.value = false;

        Get.snackbar('Login Successfull', 'Congratulations');
      } else {
        loading.value = false;

        Get.snackbar('Login failed', data['error']);
      }
    } catch (e) {
      Get.snackbar("Exception", e.toString());
    }
  }
}
