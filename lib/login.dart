import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:formvalidateapp/home.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _LoginUserState extends State<LoginUser> {
  bool isLoading = false;

  Future<void> loginUser() async {
    if (email.text.trim().isEmpty || password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Please enter email and password',
            style: TextStyle(color: const Color.fromARGB(255, 146, 220, 213)),
          ),
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );
      return;
    }

    setState(() {
      isLoading = true;
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text,
      );

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Logged In Successfully!',
            style: TextStyle(color: const Color.fromARGB(255, 146, 220, 213)),
          ),
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );

      final user = FirebaseAuth.instance.currentUser!;

      final doc = await FirebaseFirestore.instance
          .collection('Users')
          .doc(user.uid)
          .get();

      if (!doc.exists) {
        throw Exception('User details not found');
      }

      final data = doc.data()!;

      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(
            Name: data['name'] ?? '',
            Email: data['email'] ?? user.email ?? '',
            ProfileImage: null,
            Cnic: data['cnic'] ?? '',
            Phone: data['phone'] ?? '',
            Age: data['age'] ?? '',
          ),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (!mounted) return;

      String message;

      if (e.code == 'invalid-credential' ||
          e.code == 'wrong-password' ||
          e.code == 'user-not-found') {
        message = 'Invalid email or password!';
      } else if (e.code == 'invalid-email') {
        message = 'Please enter a valid email!';
      } else {
        message = e.message ?? 'Login failed. Please try again.';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: TextStyle(color: const Color.fromARGB(255, 146, 220, 213)),
          ),
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    email.clear();
    password.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 126, 189, 174),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 126, 189, 174),
        ),
        title: Text(
          "Login",
          style: TextStyle(
            color: const Color.fromARGB(255, 126, 189, 174),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 82, 74),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: email,
                  cursorColor: const Color.fromARGB(255, 1, 82, 74),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 217, 232, 231),
                    hintText: "Enter Email",
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 1, 82, 74),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 1, 82, 74),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  obscureText: true,
                  controller: password,
                  cursorColor: const Color.fromARGB(255, 1, 82, 74),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 217, 232, 231),
                    hintText: "Enter Password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 1, 82, 74),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 1, 82, 74),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 82, 74),
                  ),
                  onPressed: isLoading ? null : loginUser,
                  child: Text(
                    isLoading ? 'Logging In...' : 'Login',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 146, 220, 213),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
