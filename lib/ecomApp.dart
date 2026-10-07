import 'package:flutter/material.dart';
import 'package:formvalidateapp/login.dart';
import 'package:formvalidateapp/signup.dart';

class EcomApp extends StatefulWidget {
  const new({super.key});

  @override
  State<EcomApp> createState() => _EcomAppState();
}

class _EcomAppState extends State<EcomApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 126, 189, 174),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNq-dL-lWVaFN00hX5vQS_fe9PnTWViq_37XRxjSUecnqyQFLzjDGaqTU&s=10",
                  width: 200,
                  height: 100,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Welcome to EcomApp",
                style: TextStyle(
                  color: const Color.fromARGB(255, 1, 82, 74),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 1, 82, 74),
                  fixedSize: const Size(150, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => SignUp())),
                  );
                },
                child: Text(
                  "SignUp",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 181, 220, 211),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 1, 82, 74),
                  fixedSize: const Size(150, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => LoginUser())),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 181, 220, 211),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
