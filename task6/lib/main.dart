import 'package:flutter/material.dart';
import 'package:task6/home.dart';

void main(List<String> args) {
  runApp(const app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home()  ,
    );
  }
}