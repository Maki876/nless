import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String imagePath;
  const Mybutton({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey),
        child: Image.asset(
          imagePath,
          height: 40,
        ),
      ),
    );
  }
}
