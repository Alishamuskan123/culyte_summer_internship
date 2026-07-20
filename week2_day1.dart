import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DescriptionPage(),
    );
  }
}

class DescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSection(),
            DetailSection(),
          ],
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfqcNlSRBxx5MRshzfJ0XNeTD3Oft9EwYQsrem3nB2ow&s=10",
      width: double.infinity,
      height: 220,
      fit: BoxFit.cover,
    );
  }
}

class DetailSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Description",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15),

          Text(
            "Flutter language Tutorial",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfoBox("611k", "Likes"),
              InfoBox("123K", "Views"),
              InfoBox("17 Jul", "2026"),
            ],
          ),

          SizedBox(height: 20),

          Text(
            '#flutter #coding #programming',
            style: TextStyle(color: Colors.greenAccent),
          ),

          SizedBox(height: 20),

          Text(
            "Flutter App Development",
            style: TextStyle(color: Colors.white),
          ),

          SizedBox(height: 10),

          Text(
            'flutter Basic Course',          style: TextStyle(color: Colors.white70),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {},
            child: Text("See More"),
          ),

          SizedBox(height: 20),

          Text(
            "Transcript",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {},
            child: Text("Show Transcript"),
          ),
        ],
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  final String number;
  final String title;

  InfoBox(this.number, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            number,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}