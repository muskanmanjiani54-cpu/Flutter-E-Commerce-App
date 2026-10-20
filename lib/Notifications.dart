import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const new({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 224, 218),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 167, 220, 208),
        ),
        title: Text(
          "Notifications",
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
          SizedBox(height: 90),
          Text(
            "🔔 Your order has been shipped.",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "2 hours ago",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 18,
            ),
          ),
          SizedBox(height: 80),
          Text(
            "🎉 20% discount available!",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Yesterday",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
