import 'dart:io';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({
    super.key,
    required this.Name,
    required this.Email,
    required this.Cnic,
    required this.Phone,
    required this.Age,
    required this.ProfileImage,
  });

  final String Name;
  final String Email;
  final File? ProfileImage;
  final String Cnic;
  final String Phone;
  final String Age;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 224, 218),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 167, 220, 208),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            color: const Color.fromARGB(255, 167, 220, 208),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 82, 74),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            CircleAvatar(
              radius: 100,
              backgroundImage: widget.ProfileImage != null
                  ? FileImage(widget.ProfileImage!)
                  : null,
              backgroundColor: const Color.fromARGB(255, 126, 189, 174),
              child: widget.ProfileImage == null
                  ? Icon(Icons.person, size: 100)
                  : null,
            ),
            SizedBox(height: 30),
            Text(
              "Name: " + widget.Name,
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 82, 74),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Email: " + widget.Email,
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 82, 74),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Cnic: " + widget.Cnic,
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 82, 74),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Phone: " + widget.Phone,
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 82, 74),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Age: " + widget.Age,
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 82, 74),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
