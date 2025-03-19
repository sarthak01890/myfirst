import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myfirst/pages/homepage_file.dart';
import 'package:myfirst/pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue, // ✅ Correct usage of MaterialColor
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light, // ✅ Define dark theme
      ),
      initialRoute: "/home",
      routes: {
        "/":(context)=> LoginPage(),
        "/home":(context)=> Homepage(),
        "/login": (context)=> LoginPage()
      },
    );
  }
}
