import 'package:flutter/material.dart';
import 'package:nless/menus/drawer.dart';
// import 'package:nless/screen/home-page.dart';

class check_out extends StatelessWidget {
  const check_out({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  GestureDetector(
                    child: Icon(Icons.arrow_back_ios),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => drawerh())),
                  ),
                  const Text(
                    'Checkout',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 88,
              width: 300,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(offset: Offset(2, 3), color: Colors.grey)
              ]),
              child: const Row(
                children: [
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text(
                        'chesse burger',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text('Most buy'),
                      Text('\$10')
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(Icons.add),
                  Icon(Icons.minimize),
                  Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Image(
                      image: AssetImage('assets/burger.jpeg'),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
