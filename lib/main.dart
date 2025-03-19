import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myfirst/pages/homepage_file.dart';
import 'package:myfirst/pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // ✅ Fixed incorrect character

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue, // ✅ Correct usage of MaterialColor
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // ✅ Correct dark theme brightness
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => const LoginPage(), // ✅ Marked as const for optimization
        "/home": (context) => const Homepage(), // ✅ Marked as const for optimization
        "/login": (context) => const LoginPage(), // ✅ Marked as const for optimization
      },
    );
  }
}
