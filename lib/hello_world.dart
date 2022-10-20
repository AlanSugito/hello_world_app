import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Flutter"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(
            color: Colors.blue.shade300,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
