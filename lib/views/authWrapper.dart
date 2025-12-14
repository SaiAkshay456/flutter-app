import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/services/practice1.dart';
import 'home.dart';
import 'login.dart';

class Authwrapper extends StatelessWidget {
  const Authwrapper({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return DarkTheme();
        }
        return const Login();
      },
    );
  }
}
