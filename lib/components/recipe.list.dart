import 'package:flutter/material.dart';

class Listfood extends StatelessWidget {
  final String text;
  const Listfood({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
    // Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     width: 50,
    //     height: 60,
    //     decoration: const BoxDecoration(
    //       shape: BoxShape.circle,
    //       // image: DecorationImage(image: AssetImage('asset/burger.jpeg'))
    //     ),
    //     child: Column(children: [
    //       Container(
    //         height: 20,
    //         decoration: const BoxDecoration(shape: BoxShape.circle),
    //         child: const Image(image: AssetImage('assets/burger.jpeg')),
    //       ),
    //       Text(text)
    //     ]),
    //   ),
    // )
  }
}
