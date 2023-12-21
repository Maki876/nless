import 'package:flutter/material.dart';

class textfeild extends StatelessWidget {
  final String hinText;
  final bool obscureText;
  final controller;
  const textfeild(
      {super.key,
      required this.hinText,
      required this.obscureText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
                hintText: hinText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ))));
  }
}
