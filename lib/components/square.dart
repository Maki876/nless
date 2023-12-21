import 'package:flutter/material.dart';

class Mysquare extends StatelessWidget {
  final String tittle;
  final String image;

  const Mysquare({
    super.key,
    required this.tittle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 70,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    // shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          offset: const Offset(0, 3),
                          blurRadius: 10)
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                tittle,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
