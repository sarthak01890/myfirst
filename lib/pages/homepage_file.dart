import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  final int days = 30;
  final String name = "Sarthak";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"), // ✅ Added a valid title
        backgroundColor: Colors.blue,
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
