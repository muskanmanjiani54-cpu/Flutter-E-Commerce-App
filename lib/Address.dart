import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const new({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 224, 218),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 167, 220, 208),
        ),
        title: Text(
          "Address",
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
          SizedBox(height: 50),
          Text(
            "Delivery Address:",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          Text(
            "Home",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.all(20),
            height: 70,
            width: 600,
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 24, 54, 51)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "House #123, Street #5 Karachi, Pakistan",
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 82, 74),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
