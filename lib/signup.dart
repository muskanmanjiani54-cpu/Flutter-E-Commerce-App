import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const new({super.key});

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
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                controller: name,
                cursorColor: const Color.fromARGB(255, 1, 82, 74),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 146, 220, 213),
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
              SizedBox(height: 10),
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
              SizedBox(height: 10),
              TextField(
                maxLength: 13,
                controller: nic,
                cursorColor: const Color.fromARGB(255, 1, 82, 74),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 146, 220, 213),
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
                  fillColor: const Color.fromARGB(255, 146, 220, 213),
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
                  fillColor: const Color.fromARGB(255, 146, 220, 213),
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
                onPressed: () {
                  name.clear();
                  email.clear();
                  password.clear();
                  nic.clear();
                  phone.clear();
                  age.clear();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Signed Up Successfully!",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 146, 220, 213),
                        ),
                      ),
                      duration: Duration(seconds: 2),
                      backgroundColor: const Color.fromARGB(255, 1, 82, 74),
                    ),
                  );
                },
                child: Text(
                  "SignUp",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 146, 220, 213),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
