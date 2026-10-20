import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  const new({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 224, 218),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 167, 220, 208),
        ),
        title: Text(
          "My Orders",
          style: TextStyle(
            color: const Color.fromARGB(255, 167, 220, 208),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 82, 74),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    "https://www.footwearmenders.com/cdn/shop/files/IMG_7423-Photoroom.jpg?v=1735572661",
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Shoes",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Rs. 2500",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Delivered ✅",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    "https://silverlinings.in/cdn/shop/products/Bracelet_for_women_BG111_101.jpg?v=1757269454&width=1445",
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Bracelet",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Rs. 1200",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Delivered ✅",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1708651145401-6be804cd02d4?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Watch",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Rs. 3000",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "In Transit 🚚",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv4pEwRlMQ6y3TEFgOlcY9kXVXZkNnqGw41TgInkC2uioXyI7HFByvWnYF&s=10",
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Glasses",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Rs. 1500",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "In Transit 🚚",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 1, 82, 74),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
