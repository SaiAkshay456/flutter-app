import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyState extends StatefulWidget {
  const MyState({super.key});

  @override
  State<MyState> createState() => _MyStatePage();
}

class _MyStatePage extends State<MyState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [Text("Click"), Text("Me Too")])),
    );
  }
}
