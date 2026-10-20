import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notificationsOn = true;
  bool darkModeOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 224, 218),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 167, 220, 208),
        ),
        title: Text(
          "Settings",
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
          SizedBox(height: 30),
          Column(
            children: [
              SwitchListTile(
                activeColor: const Color.fromARGB(255, 1, 82, 74),
                title: Text(
                  "Notifications",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 1, 82, 74),
                    fontSize: 20,
                  ),
                ),
                secondary: Icon(
                  Icons.notifications,
                  color: const Color.fromARGB(255, 1, 82, 74),
                ),
                value: notificationsOn,
                onChanged: (value) {
                  setState(() {
                    notificationsOn = value;
                  });
                },
              ),
              Divider(color: const Color.fromARGB(255, 1, 82, 74)),
              SwitchListTile(
                activeColor: const Color.fromARGB(255, 1, 82, 74),
                title: Text(
                  "Dark Mode",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 1, 82, 74),
                    fontSize: 20,
                  ),
                ),
                secondary: Icon(
                  Icons.dark_mode,
                  color: const Color.fromARGB(255, 1, 82, 74),
                ),
                value: darkModeOn,
                onChanged: (value) {
                  setState(() {
                    darkModeOn = value;
                  });
                },
              ),
              Divider(color: const Color.fromARGB(255, 1, 82, 74)),
              ListTile(
                leading: Icon(
                  Icons.lock,
                  color: const Color.fromARGB(255, 1, 82, 74),
                ),
                title: Text(
                  "Change Password",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 1, 82, 74),
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(color: const Color.fromARGB(255, 1, 82, 74)),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: const Color.fromARGB(255, 1, 82, 74),
                ),
                title: Text(
                  "Account Settings",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 1, 82, 74),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
