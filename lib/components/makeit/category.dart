import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final String text;
  const Options({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Container(
        width: 70,
        height: 30,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
