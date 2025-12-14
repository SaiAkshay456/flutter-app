import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "../views/login.dart";
import 'package:firebase_auth/firebase_auth.dart';

class DarkTheme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DarkThemeState();
  }
}

class _DarkThemeState extends State<DarkTheme> {
  Color colorBg = Colors.amberAccent;
  Color textColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg,
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            label: Text("About"),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.contact_page_outlined),
            label: Text("Contact"),
          ),
          TextButton.icon(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(Icons.logout_outlined),
            label: Text("Logout"),
          ),
        ],
      ),
      body: DefaultTextStyle(
        style: TextStyle(color: textColor, fontSize: 16),
        child: Column(
          children: [
            SizedBox(height: 20, child: Text("Please sign in")),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorBg = Colors.black;
                  textColor = Colors.white;
                });
              },
              child: Text("Dark"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  colorBg = Colors.white;
                  textColor = Colors.black;
                });
              },
              child: Text("White"),
            ),
          ],
        ),
      ),
    );
  }
}
