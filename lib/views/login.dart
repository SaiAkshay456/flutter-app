import 'package:flutter/material.dart';
import 'package:flutter_project/services/practice1.dart';
import '../services/authService.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void showPopup(String message) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Message"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  void handleSignUp() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    if (email.isEmpty || password.isEmpty) {
      showPopup("Email and password required");
      return;
    }
    try {
      final user = await authSignUp(email, password);
      if (user != null) {
        showPopup("Successfully login");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DarkTheme()),
        );
      } else {
        showPopup("login failed");
      }
    } catch (err) {
      showPopup(err.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("🔥 Login build called");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 340,
              child: TextField(
                decoration: InputDecoration(labelText: "Email"),
                controller: emailController,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 340,
              child: TextField(
                decoration: InputDecoration(labelText: "Password"),
                controller: passwordController,
                obscureText: true,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: handleSignUp,
                child: Text("Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
