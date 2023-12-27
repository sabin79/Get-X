import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lanhguage Translation"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text("English")),
              const SizedBox(
                width: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('np', 'NP'));
                  },
                  child: const Text("Nepali"))
            ],
          )
        ],
      ),
    );
  }
}
