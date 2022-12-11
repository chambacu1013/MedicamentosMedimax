import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
      padding: const EdgeInsets.all(30),
      child: const Text(
        "Hola Flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.grey, fontSize: 16

            //backgroundColor: Colors.red

            ),
      ),
    ),
  );
}
