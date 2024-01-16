import 'package:flutter/material.dart';
import 'package:jan2024/gradient_container.dart';
void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        body:GradientContainer(Colors.amberAccent,Colors.blueGrey) ,
      ),
    ),
  );
}

