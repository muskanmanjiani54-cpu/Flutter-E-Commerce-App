import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const new({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 224, 218),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 167, 220, 208),
        ),
        title: Text(
          "WishList",
          style: TextStyle(
            color: const Color.fromARGB(255, 167, 220, 208),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 82, 74),
      ),
      body: Column(
        children: [
          SizedBox(height: 150),
          Row(
            children: [
              Text(
                "❤️ Shoes",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 100),
              Text(
                "Rs.2500",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "❤️ Bracelet",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 70),
              Text(
                "Rs.1200",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "❤️ Watch",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 100),
              Text(
                "Rs.3000",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
