import 'package:example_app_getx/counter_example/WhyGetx.dart';
import 'package:example_app_getx/ScreenOne.dart';
import 'package:example_app_getx/ScreenTwo.dart';
import 'package:example_app_getx/example_two/Example_two_Screen.dart';
import 'package:example_app_getx/homeScreen.dart';
import 'package:example_app_getx/image_picker/Image_picker.dart';
import 'package:example_app_getx/language_change/language_page.dart';
import 'package:example_app_getx/language_change/languages.dart';
import 'package:example_app_getx/login_signup/login_screen.dart';
import 'package:example_app_getx/mark_favourite/favourite_screen.dart';
import 'package:example_app_getx/navigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'example_three/example_three_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('en', 'US'),
      translations: Languages(),
      fallbackLocale: const Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      // getPages: [
      //   GetPage(name: '/navigator', page: () => const NavigatorScreen()),
      //   GetPage(name: '/screenOne', page: () => ScreenOne()),
      //   GetPage(name: '/screenTwo', page: () => const ScreenTwo()),
      // ],
    );
  }
}
