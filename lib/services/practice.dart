import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<MyHomePage> {
  String? name = "akshay";
  int count = 0;
  final _numberController1 = TextEditingController();
  final _numberController2 = TextEditingController();
  int? result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = "shiva";
                });
              },
              child: Text("Press shiva"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = "akshay";
                });
              },
              child: Text("Press Akshay"),
            ),
            Text("$name"),
            SizedBox(height: 30, child: Text("$result")),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(labelText: "Number 1"),
                    controller: _numberController1,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 30,
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(labelText: "Number 2"),
                    controller: _numberController2,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count = count + 1;
                      });
                    },
                    child: Text("+"),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        count = count - 1;
                      });
                    },
                    child: Text("-"),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        int num1 = int.tryParse(_numberController1.text) ?? 0;
                        int num2 = int.tryParse(_numberController2.text) ?? 0;
                        result = num1 + num2;
                      });
                    },
                    child: Text("Add"),
                  ),
                ),
              ],
            ),
            Text('$count'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: Text("Reset"),
            ),
            ElevatedButton(
              onPressed: () {
                _numberController1.text = "";
                _numberController2.text = "";
                setState(() {
                  result = 0;
                });
              },
              child: Text("Reset input"),
            ),
          ],
        ),
      ),
    );
  }
}
