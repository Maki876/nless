import 'package:flutter/material.dart';

class Ordercard extends StatelessWidget {
  const Ordercard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Colors.white)],
      ),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12.0, left: 5),
            child: Column(
              children: [
                Text(
                  'Chesse Burger',
                  style: TextStyle(fontSize: 20),
                ),
                Text('hot tost buns with beef patty'),
                Text('lettuce, tomato, cheese, ect.'),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.minimize_outlined,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Text(
                  '\$10',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100.0),
            child: SizedBox(
              height: 80,
              width: 60,
              child: Image(image: AssetImage('assets/burger.jpeg')),
            ),
          ),
        ],
      ),
    );
  }
}
