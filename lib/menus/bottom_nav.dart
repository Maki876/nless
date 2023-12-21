import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nless/screen/checkout.dart';

import 'package:nless/screen/home-page.dart';
// import 'package:nless/screen/payment_screen.dart';
import 'package:nless/screen/recipe_screen.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({super.key});

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  final pages = [HomePage()];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar:
          // Stack(children: [
          //   Positioned(
          //     bottom: 40.0, // Adjust the vertical position as needed
          //     left: 16.0, // Adjust the horizontal position as needed
          //     child: FloatingActionButton(
          //       onPressed: () {
          //         // Add your shopping cart action here
          //         // For example, open the shopping cart screen.
          //       },
          //       backgroundColor: Colors.blue, // Customize the color
          //       child: Icon(Icons.shopping_cart, color: Colors.white),
          //     ),
          //   ),
          Container(
        color: Colors.white10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: GNav(
              selectedIndex: selectedIndex,
              backgroundColor: Colors.white,
              color: Colors.white,
              activeColor: Colors.yellow,
              tabBackgroundColor: Colors.orange.shade300,
              gap: 10,
              padding: const EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.home,
                  iconColor: Colors.orange[200],
                  text: 'home',
                  hoverColor: Colors.blue,
                ),
                GButton(
                  icon: Icons.receipt,
                  iconColor: Colors.orange[200],
                  text: 'receipe',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Makeit_at_home()));
                  },
                ),
                GButton(
                    icon: Icons.shopping_cart,
                    iconColor: Colors.orange[200],
                    text: 'cart',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const check_out()));
                    }),
                GButton(
                  icon: Icons.favorite,
                  iconColor: Colors.orange[200],
                  text: 'fav',
                ),
                GButton(
                    icon: Icons.location_city,
                    iconColor: Colors.orange[200],
                    text: 'location',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Makeit_at_home()));
                    }),
              ]),
        ),
      ),
    );
  }
}
