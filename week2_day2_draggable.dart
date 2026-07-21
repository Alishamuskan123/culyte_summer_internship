import 'package:flutter/material.dart';

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
      home: DraggableDemo(),
    );
  }
}

// Main Screen
class DraggableDemo extends StatefulWidget {
  const DraggableDemo({super.key});

  @override
  State<DraggableDemo> createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  // Text shown inside the DragTarget
  String message = "Drop Here";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Draggable Demo"),
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            // Draggable Widget
            Draggable<String>(
              // Data sent to DragTarget
              data: "Flutter",

              // Widget shown while dragging
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                alignment: Alignment.center,
                child: const Text(
                  "Flutter",
                  style: TextStyle(color: Colors.white),
                ),
              ),

              // Original widget
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  "Drag Me",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            // Drag Target
            DragTarget<String>(
              // Runs when item is dropped
              onAcceptWithDetails: (details) {
                setState(() {
                  message = details.data;
                });
              },

              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 120,
                  height: 120,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text(
                    message,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}