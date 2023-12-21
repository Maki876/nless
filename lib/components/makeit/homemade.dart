import 'package:flutter/material.dart';

class MakeitList extends StatelessWidget {
  final Map<String, dynamic> recipe;
  const MakeitList({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 90,
        width: 90,
        // color: Colors.blue,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))),
        child: Row(
          children: [
            SizedBox(
              height: 180,
              width: 100,
              child: Image(
                image: AssetImage(recipe['image']),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('This is a ${recipe['name']} recipe'),
            )
          ],
        ),
      ),
    );
  }
}
