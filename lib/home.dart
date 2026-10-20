import 'dart:io';

import 'package:flutter/material.dart';
import 'package:formvalidateapp/drawer.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.Name,
    required this.Email,
    required this.ProfileImage,
    required this.Cnic,
    required this.Phone,
    required this.Age,
  });
  final String Name;
  final String Email;
  final File? ProfileImage;
  final String Cnic;
  final String Phone;
  final String Age;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 224, 218),
      drawer: CustomDrawer(
        Name: widget.Name,
        Email: widget.Email,
        ProfileImage: widget.ProfileImage,
        Cnic: widget.Cnic,
        Phone: widget.Phone,
        Age: widget.Age,
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 167, 220, 208),
        ),
        title: Text(
          "Home",
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
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 197, 220, 220),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              cursorColor: const Color.fromARGB(255, 1, 82, 74),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: const Color.fromARGB(255, 113, 115, 115),
                ),
                hintText: "Search products",
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 113, 115, 115),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Categories",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: BoxBorder.all(
                    color: const Color.fromARGB(255, 1, 82, 74),
                  ),
                ),
                child: Text("Shoes", textAlign: TextAlign.center),
              ),
              SizedBox(width: 15),
              Container(
                width: 80,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: BoxBorder.all(
                    color: const Color.fromARGB(255, 1, 82, 74),
                  ),
                ),
                child: Text("Bracelets", textAlign: TextAlign.center),
              ),
              SizedBox(width: 15),
              Container(
                width: 80,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: BoxBorder.all(
                    color: const Color.fromARGB(255, 1, 82, 74),
                  ),
                ),
                child: Text("Watches", textAlign: TextAlign.center),
              ),
              SizedBox(width: 15),
              Container(
                width: 70,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: BoxBorder.all(
                    color: const Color.fromARGB(255, 1, 82, 74),
                  ),
                ),
                child: Text("Glasses", textAlign: TextAlign.center),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            "Products",
            style: TextStyle(
              color: const Color.fromARGB(255, 1, 82, 74),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 10),
              Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxzHTYOy2S250hior_yKLk5tnEqxa5hMlLr1TuQtAzZ8z08DIE0XvAW4wx&s=10",
                    ),
                  ),
                  Text(
                    "Shoes",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 1, 82, 74),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "RS. 2500",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 1, 82, 74),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                      "https://i5.walmartimages.com/seo/Swiss-Brand-POEDAGAR-Men-Watch-Waterproof-Luminous-Sport-Chronograph-Stainless-Steel-Watches-Man-Luxury-Fashion-Quazt-Wristwatch_8911bcf3-8302-40b9-9312-4d1a187af3a9.73b603962fd2180f7593635e1cb2646a.jpeg",
                    ),
                  ),
                  Text(
                    "Watch",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 1, 82, 74),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "RS. 4000",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 1, 82, 74),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
