import 'dart:async';

import 'package:flutter/material.dart';

class GetHomeScreen extends StatefulWidget {
  const GetHomeScreen({super.key});

  @override
  State<GetHomeScreen> createState() => _GetHomeScreenState();
}

class _GetHomeScreenState extends State<GetHomeScreen> {
  int x = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      x++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx toutorial'),
      ),
      body: Center(
        child: Text(
          x.toString(),
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
