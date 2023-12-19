import 'package:example_app_getx/ScreenOne.dart';
import 'package:example_app_getx/ScreenTwo.dart';
import 'package:example_app_getx/homeScreen.dart';
import 'package:example_app_getx/navigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const NavigatorScreen()),
        GetPage(name: '/screenOne', page: () => ScreenOne()),
        GetPage(name: '/screenTwo', page: () => const ScreenTwo()),
      ],
    );
  }
}
