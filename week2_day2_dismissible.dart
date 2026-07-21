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
      home: DismissibleDemo(),
    );
  }
}

// Main Screen
class DismissibleDemo extends StatefulWidget {
  const DismissibleDemo({super.key});

  @override
  State<DismissibleDemo> createState() => _DismissibleDemoState();
}

class _DismissibleDemoState extends State<DismissibleDemo> {
  // List of fruits
  List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
    "Orange",
    "Peach",
    "Grapes",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible Demo"),
        centerTitle: true,
      ),

      // List of fruits
      body: ListView.builder(
        itemCount: fruits.length,

        itemBuilder: (context, index) {
          return Dismissible(

            // Every Dismissible must have a unique key
            key: Key(fruits[index]),

            // Background shown while swiping
            background: Container(
              color: Colors.red,
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
                size: 35,
              ),
            ),

            // Called after the item is dismissed
            onDismissed: (direction) {

              // Save the deleted item
              String deletedFruit = fruits[index];

              // Remove it from the list
              setState(() {
                fruits.removeAt(index);
              });

              // Show a message
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("$deletedFruit Deleted"),
                ),
              );
            },

            // List item
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.all(8),

              child: ListTile(
                leading: const Icon(Icons.apple),
                title: Text(fruits[index]),
                subtitle: const Text("Swipe left or right to delete"),
              ),
            ),
          );
        },
      ),
    );
  }
}