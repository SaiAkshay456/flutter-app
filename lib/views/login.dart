import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            SizedBox(
              width: 320,
              child: TextField(
                decoration: InputDecoration(labelText: "Enter mail"),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 320,
              child: TextField(
                decoration: InputDecoration(labelText: "Enter Password"),
                obscureText: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
