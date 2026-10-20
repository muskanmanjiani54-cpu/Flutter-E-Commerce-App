import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:formvalidateapp/home.dart';
import 'package:image_picker/image_picker.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController nic = TextEditingController();
TextEditingController phone = TextEditingController();
TextEditingController age = TextEditingController();

class _SignUpState extends State<SignUp> {
  XFile? pickedImage;

  Future<void> pickProfileImage() async {
    final XFile? image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (image != null) {
      setState(() {
        pickedImage = image;
      });
    }
  }

  void signUpCheck() {
    if (pickedImage == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 3),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          content: Row(
            children: [
              Icon(
                Icons.error,
                color: const Color.fromARGB(255, 146, 220, 213),
              ),
              SizedBox(width: 3),
              Text(
                "Select profile picture!",
                style: TextStyle(
                  color: const Color.fromARGB(255, 146, 220, 213),
                ),
              ),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );
    } else if (name.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 3),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          content: Row(
            children: [
              Icon(
                Icons.error,
                color: const Color.fromARGB(255, 146, 220, 213),
              ),
              SizedBox(width: 3),
              Text(
                "Enter the name!",
                style: TextStyle(
                  color: const Color.fromARGB(255, 146, 220, 213),
                ),
              ),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );
    } else if (email.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          content: Row(
            children: [
              Icon(
                Icons.error,
                color: const Color.fromARGB(255, 146, 220, 213),
              ),
              SizedBox(width: 3),
              Text(
                "Enter the email!",
                style: TextStyle(
                  color: const Color.fromARGB(255, 146, 220, 213),
                ),
              ),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );
    } else if (password.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          content: Row(
            children: [
              Icon(
                Icons.error,
                color: const Color.fromARGB(255, 146, 220, 213),
              ),
              SizedBox(width: 3),
              Text(
                "Enter the password!",
                style: TextStyle(
                  color: const Color.fromARGB(255, 146, 220, 213),
                ),
              ),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );
    } else if (nic.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          content: Row(
            children: [
              Icon(
                Icons.error,
                color: const Color.fromARGB(255, 146, 220, 213),
              ),
              SizedBox(width: 3),
              Text(
                "Enter the cnic!",
                style: TextStyle(
                  color: const Color.fromARGB(255, 146, 220, 213),
                ),
              ),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );
    } else if (phone.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          content: Row(
            children: [
              Icon(
                Icons.error,
                color: const Color.fromARGB(255, 146, 220, 213),
              ),
              SizedBox(width: 3),
              Text(
                "Enter the Phone!",
                style: TextStyle(
                  color: const Color.fromARGB(255, 146, 220, 213),
                ),
              ),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );
    } else if (age.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          content: Row(
            children: [
              Icon(
                Icons.error,
                color: const Color.fromARGB(255, 146, 220, 213),
              ),
              SizedBox(width: 3),
              Text(
                "Enter the age!",
                style: TextStyle(
                  color: const Color.fromARGB(255, 146, 220, 213),
                ),
              ),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );
    }
  }

  bool isLoading = false;

  Future<void> createAccount() async {
    setState(() {
      isLoading = true;
    });

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: email.text.trim(),
            password: password.text.trim(),
          );

      await FirebaseFirestore.instance
          .collection('Users')
          .doc(userCredential.user!.uid)
          .set({
            'name': name.text.trim(),
            'email': email.text.trim(),
            'cnic': nic.text.trim(),
            'phone': phone.text.trim(),
            'age': age.text.trim(),
          });

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          content: Text(
            "Account Created Successfully!",
            style: TextStyle(color: const Color.fromARGB(255, 146, 220, 213)),
          ),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(
            Name: name.text.trim(),
            Email: email.text.trim(),
            ProfileImage: File(pickedImage!.path),
            Cnic: nic.text.trim(),
            Phone: phone.text.trim(),
            Age: age.text.trim(),
          ),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 1, 82, 74),
          content: Text(
            e.message ?? 'Signup failed. Please try again.',
            style: TextStyle(color: const Color.fromARGB(255, 146, 220, 213)),
          ),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ),
      );
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Error: $e',
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 126, 189, 174),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 126, 189, 174),
        ),
        title: Text(
          "SignUp",
          style: TextStyle(
            color: const Color.fromARGB(255, 126, 189, 174),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 82, 74),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: pickProfileImage,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: const Color.fromARGB(255, 1, 82, 74),
                    backgroundImage: pickedImage != null
                        ? FileImage(File(pickedImage!.path))
                        : null,
                    child: pickedImage == null
                        ? const Icon(
                            Icons.add_a_photo,
                            size: 35,
                            color: Color.fromARGB(255, 146, 220, 213),
                          )
                        : null,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Choose Profile Picture",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 1, 82, 74),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: name,
                  cursorColor: const Color.fromARGB(255, 1, 82, 74),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 217, 232, 231),
                    hintText: "Enter Username",
                    prefixIcon: Icon(Icons.person),
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
                SizedBox(height: 10),
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
                SizedBox(height: 10),
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
                SizedBox(height: 10),
                TextField(
                  maxLength: 13,
                  controller: nic,
                  cursorColor: const Color.fromARGB(255, 1, 82, 74),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 217, 232, 231),
                    counterText: "",
                    hintText: "Enter Cnic",
                    prefixIcon: Icon(Icons.badge),
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
                SizedBox(height: 10),
                TextField(
                  maxLength: 11,
                  controller: phone,
                  cursorColor: const Color.fromARGB(255, 1, 82, 74),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 217, 232, 231),
                    counterText: "",
                    hintText: "Enter Phone",
                    prefixIcon: Icon(Icons.phone),
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
                SizedBox(height: 10),
                TextField(
                  controller: age,
                  cursorColor: const Color.fromARGB(255, 1, 82, 74),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 217, 232, 231),
                    hintText: "Enter Age",
                    prefixIcon: Icon(Icons.calendar_month),
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
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 82, 74),
                  ),
                  onPressed: isLoading
                      ? null
                      : () {
                          if (pickedImage == null ||
                              name.text.trim().isEmpty ||
                              email.text.trim().isEmpty ||
                              password.text.trim().isEmpty ||
                              nic.text.trim().isEmpty ||
                              phone.text.trim().isEmpty ||
                              age.text.trim().isEmpty) {
                            signUpCheck();
                            return;
                          }

                          createAccount();
                        },
                  child: Text(
                    isLoading ? "Creating Account..." : "SignUp",
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
