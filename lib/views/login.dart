import 'package:flutter/material.dart';
import '../services/authService.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void handleSignIn() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final user = await authSignUp(email, password);
    if (user != null) {
      print("sign in successful:${user.email}");
    } else {
      print("Signup fail");
    }
  }

  @override
  Widget build(BuildContext context) {
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
                onPressed: handleSignIn,
                child: Text("Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
