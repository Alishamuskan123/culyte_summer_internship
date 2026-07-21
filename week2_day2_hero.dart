// Import Flutter Material package
import 'package:flutter/material.dart';

// Starting point of the application
void main() {
  runApp(const MyApp());
}

// Root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

// ---------------------- First Screen ----------------------

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero & Navigator Demo"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text(
              "Tap the Flutter Logo",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // Detects tap on the logo
            GestureDetector(
              onTap: () {

                // Move to the second screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );
              },

              // Hero animation starts here
              child: Hero(
                tag: "flutterLogo",

                child: const FlutterLogo(
                  size: 120,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------- Second Screen ----------------------

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Same Hero tag as the first screen
            Hero(
              tag: "flutterLogo",

              child: const FlutterLogo(
                size: 250,
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {

                // Return to the previous screen
                Navigator.pop(context);

              },

              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}