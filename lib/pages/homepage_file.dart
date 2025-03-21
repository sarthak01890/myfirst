import 'package:flutter/material.dart';

class HomePage extends StatelessWidget { // ✅ Changed Homepage to HomePage
  const HomePage({super.key});

  final int days = 30;
  final String name = "Sarthak";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          "Welcome $name, $days days. You prepared well.",
          style: const TextStyle(fontSize: 24),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
