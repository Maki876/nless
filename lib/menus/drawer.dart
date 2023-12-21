import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:nless/menus/bottom_nav.dart';
import 'package:nless/screen/accounts_screen.dart';
import 'package:nless/screen/loing_page.dart';
import 'package:nless/screen/payment_screen.dart';

class drawerh extends StatefulWidget {
  const drawerh({super.key});

  @override
  State<drawerh> createState() => _drawerhState();
}

class _drawerhState extends State<drawerh> {
  List<ScreenHiddenDrawer> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            baseStyle: TextStyle(),
            // name: 'homepage',
            name: 'home',
            selectedStyle: TextStyle(),
          ),
          Bottom_Nav()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            baseStyle: TextStyle(),
            // name: 'homepage',
            name: 'settings',
            selectedStyle: TextStyle(),
          ),
          Bottom_Nav()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            baseStyle: TextStyle(),
            // name: 'homepage',
            name: 'Account',
            selectedStyle: TextStyle(),
          ),
          Accounts()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            baseStyle: TextStyle(),
            // name: 'homepage',
            name: 'payment',
            selectedStyle: TextStyle(),
          ),
          PaymentScreen()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            baseStyle: TextStyle(),
            // name: 'homepage',
            name: 'Logout',
            selectedStyle: TextStyle(),
          ),
          LoginPage()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorAppBar: Colors.orangeAccent[200],
      backgroundColorMenu: Colors.orangeAccent,
      //the screens that u want to show
      screens: pages,
      //counting the pages
      initPositionSelected: 0,
      //how far away  u want the container to be
      slidePercent: 60,
      //corner on the container
      contentCornerRadius: 3,
    );
  }
}
