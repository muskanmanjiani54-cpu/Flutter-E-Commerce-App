import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCart extends StatefulWidget {
  const new({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 224, 218),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 167, 220, 208),
        ),
        title: Text(
          "My Cart",
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
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                "4 Items:",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Shoes",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 128),
              Text(
                "Rs. 2500",
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
                "Bracelet",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 100),
              Text(
                "Rs. 1200",
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
                "Watch",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 129),
              Text(
                "Rs. 3000",
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
                "Glasses",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 107),
              Text(
                "Rs. 1500",
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
                "------------------------------",
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
                "Total",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 149),
              Text(
                "Rs. 8200",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 1, 82, 74),
            ),
            onPressed: () {},
            child: Text(
              "CheckOut",
              style: TextStyle(
                color: const Color.fromARGB(255, 195, 224, 218),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
