import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 46, 4, 3), Color.fromARGB(255, 192, 1, 49)
            // Color.fromARGB(255, 1, 22, 39),
            // Color.fromARGB(255, 33, 159, 213),
            ),
      ),
    ),
  );
}
