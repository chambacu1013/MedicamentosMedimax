// ignore_for_file: prefer_const_literals_to_create_immutables, equal_elements_in_set, prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(Directionality(
    textDirection: TextDirection.ltr,
    child: Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Container(
            height: 64,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                color: const Color.fromARGB(255, 59, 201, 59)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.menu),
                Text(
                  "Diario",
                  style: TextStyle(fontSize: 32, color: Colors.black),
                ),
                Icon(Icons.account_circle)
              ],
            ),
          ),
          const Text(
            "Mis notas",
            style: TextStyle(fontSize: 32, color: Colors.black),
          ),
        ],
      ),
    ),
  ));
}
