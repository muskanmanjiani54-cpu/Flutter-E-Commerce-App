import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const new({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 224, 218),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 167, 220, 208),
        ),
        title: Text(
          "Help & Support",
          style: TextStyle(
            color: const Color.fromARGB(255, 167, 220, 208),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 1, 82, 74),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.question_mark_sharp,
              color: const Color.fromARGB(255, 1, 82, 74),
            ),
            title: Text(
              "FAQs",
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 82, 74),
                fontSize: 20,
              ),
            ),
          ),
          Divider(color: const Color.fromARGB(255, 1, 82, 74)),
          ListTile(
            leading: Icon(
              Icons.phone,
              color: const Color.fromARGB(255, 1, 82, 74),
            ),
            title: Text(
              "Contact Us",
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 82, 74),
                fontSize: 20,
              ),
            ),
          ),
          Divider(color: const Color.fromARGB(255, 1, 82, 74)),
          ListTile(
            leading: Icon(
              Icons.report_problem,
              color: const Color.fromARGB(255, 1, 82, 74),
            ),
            title: Text(
              "Report a Problem",
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 82, 74),
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
