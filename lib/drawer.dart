import 'dart:io';

import 'package:flutter/material.dart';
import 'package:formvalidateapp/Address.dart';
import 'package:formvalidateapp/Notifications.dart';
import 'package:formvalidateapp/about.dart';
import 'package:formvalidateapp/help.dart';
import 'package:formvalidateapp/home.dart';
import 'package:formvalidateapp/myCart.dart';
import 'package:formvalidateapp/myOrders.dart';
import 'package:formvalidateapp/profile.dart';
import 'package:formvalidateapp/settings.dart';
import 'package:formvalidateapp/wishlist.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:formvalidateapp/login.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
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
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 195, 224, 218),
      child: ListView(
        children: [
          drawerHeader(),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 82, 74),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                iconColor: const Color.fromARGB(255, 167, 220, 208),
                leading: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 220, 208),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Profile(
                    ProfileImage: widget.ProfileImage,
                    Name: widget.Name,
                    Email: widget.Email,
                    Cnic: widget.Cnic,
                    Phone: widget.Phone,
                    Age: widget.Age,
                  )),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 82, 74),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                iconColor: const Color.fromARGB(255, 167, 220, 208),
                leading: Icon(Icons.person),
                title: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 220, 208),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => MyOrders())),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 82, 74),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                iconColor: const Color.fromARGB(255, 167, 220, 208),
                leading: Icon(Icons.shopping_bag),
                title: Text(
                  "My Orders",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 220, 208),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => WishList())),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 82, 74),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                iconColor: const Color.fromARGB(255, 167, 220, 208),
                leading: Icon(Icons.favorite_outline),
                title: Text(
                  "Wishlist",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 220, 208),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => MyCart())),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 82, 74),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                iconColor: const Color.fromARGB(255, 167, 220, 208),
                leading: Icon(Icons.shopping_cart),
                title: Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 220, 208),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => Address())),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 82, 74),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                iconColor: const Color.fromARGB(255, 167, 220, 208),
                leading: Icon(Icons.location_on),
                title: Text(
                  "Address",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 220, 208),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => Notifications())),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 82, 74),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                iconColor: const Color.fromARGB(255, 167, 220, 208),
                leading: Icon(Icons.notifications),
                title: Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 220, 208),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => Settings())),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 82, 74),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                iconColor: const Color.fromARGB(255, 167, 220, 208),
                leading: Icon(Icons.settings),
                title: Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 220, 208),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => Help())),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 82, 74),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                iconColor: const Color.fromARGB(255, 167, 220, 208),
                leading: Icon(Icons.help),
                title: Text(
                  "Help & Support",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 220, 208),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => About())),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 82, 74),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                iconColor: const Color.fromARGB(255, 167, 220, 208),
                leading: Icon(Icons.info),
                title: Text(
                  "About Us",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 220, 208),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 1, 82, 74),
                      ),
                    ),
                    content: const Text(
                      "Are you sure you want to logout?",
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 1, 82, 74),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 1, 82, 74),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.pop(context); // Dialog close

                          await FirebaseAuth.instance.signOut();

                          if (!context.mounted) return;

                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginUser(),
                            ),
                            (route) => false,
                          );
                        },
                        child: const Text(
                          "Yes",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 1, 82, 74),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 82, 74),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                iconColor: const Color.fromARGB(255, 167, 220, 208),
                leading: Icon(Icons.logout),
                title: Text(
                  "LogOut",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 167, 220, 208),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DrawerHeader drawerHeader() {
    return DrawerHeader(
      decoration: BoxDecoration(color: const Color.fromARGB(255, 1, 82, 74)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: const Color.fromARGB(255, 126, 189, 174),
            backgroundImage: widget.ProfileImage != null
                ? FileImage(widget.ProfileImage!)
                : null,
            child: widget.ProfileImage == null
                ? const Icon(Icons.person, size: 35)
                : null,
          ),
          SizedBox(height: 8),
          Text(
            widget.Name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 167, 220, 208),
            ),
          ),
          Text(
            widget.Email,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 167, 220, 208),
            ),
          ),
        ],
      ),
    );
  }
}
