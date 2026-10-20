import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const new({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 224, 218),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 167, 220, 208),
        ),
        title: Text(
          "About Us",
          style: TextStyle(
            color: const Color.fromARGB(255, 167, 220, 208),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 82, 74),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            "E-Commerce App",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Your simple and easy shopping application.",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Version 1.0.0",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Developed using Flutter & Dart",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
