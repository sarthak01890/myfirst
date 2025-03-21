import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), // Padding for entire column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Align content at the top
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            const SizedBox(height: 50), // Space from top if needed
            Center(
              child: Image.asset(
                'assets/images/photo.png',
                fit: BoxFit.cover,
                width: 200, // Optional: Adjust size if needed
                height: 200,
              ),
            ),
            const SizedBox(height: 20), // Space between image and text
            const Text(
              "WELCOME", // Uppercase for better impact
              style: TextStyle(
                fontSize: 40, // Increased font size
                fontWeight: FontWeight.bold, // Bold text
                color: Colors.blueAccent, // Attractive color
                letterSpacing: 2, // Add space between letters
                shadows: [
                  Shadow(
                    blurRadius: 3.0, // Blur effect
                    color: Colors.grey, // Shadow color
                    offset: Offset(2.0, 2.0), // Shadow position
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Space between text and input fields
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter your phone number",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone), // Phone icon
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20), // Space between input fields
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter your password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock), // Lock icon
              ),
              obscureText: true, // Hide password
            ),
            const SizedBox(height: 30), // Space before button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent, // Button color
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                print("hi codepur"); // ✅ Button pressed action
              },
              child: const Text("LOGIN", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
