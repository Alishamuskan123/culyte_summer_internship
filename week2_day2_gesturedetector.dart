// Import Flutter Material package
import 'package:flutter/material.dart';

// Starting point of the application
void main() {
  runApp(const MyApp());
}

// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GestureDetector Demo",
      home: const GestureDetectorDemo(),
    );
  }
}

// Main screen
class GestureDetectorDemo extends StatelessWidget {
  const GestureDetectorDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GestureDetector"),
        centerTitle: true,
      ),

      body: Center(
        child: GestureDetector(

          // Runs when the container is tapped once
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Container Tapped"),
              ),
            );
          },

          // Runs when the container is double tapped
          onDoubleTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Container Double Tapped"),
              ),
            );
          },

          // Runs when the container is long pressed
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Container Long Pressed"),
              ),
            );
          },

          // Widget on which gestures are detected
          child: Container(
            width: 250,
            height: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),

            child: const Text(
              "Tap Me\nDouble Tap\nLong Press",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}