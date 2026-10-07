import 'package:flutter/material.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _LoginUserState extends State<LoginUser> {
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
                    fillColor: const Color.fromARGB(255, 146, 220, 213),
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
                    fillColor: const Color.fromARGB(255, 146, 220, 213),
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
                  onPressed: () {
                    email.clear();
                    password.clear();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Logged In Successfully!",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 146, 220, 213),
                          ),
                        ),
                        backgroundColor: const Color.fromARGB(255, 1, 82, 74),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 146, 220, 213),
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
