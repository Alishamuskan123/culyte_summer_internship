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
      home: InteractiveViewerDemo(),
    );
  }
}

// Main Screen
class InteractiveViewerDemo extends StatelessWidget {
  const InteractiveViewerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InteractiveViewer Demo"),
        centerTitle: true,
      ),

      body: Center(

        // InteractiveViewer allows zooming and panning
        child: InteractiveViewer(

          // Minimum zoom level
          minScale: 0.5,

          // Maximum zoom level
          maxScale: 4.0,

          // Allow dragging (panning)
          panEnabled: true,

          // Allow pinch-to-zoom
          scaleEnabled: true,

          // Widget to interact with
          child: Container(
            width: 250,
            height: 250,

            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),

            alignment: Alignment.center,

            child: const Text(
              "Pinch to Zoom\n\nDrag to Move",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}