import 'package:flutter/material.dart';

class Adds extends StatelessWidget {
  const Adds({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage('assets/dc.png'),
          height: 60,
          width: 60,
        ),
      ),
    );
  }
}
