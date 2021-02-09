import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apptest1/Hal1.dart';
import 'package:flutter_apptest1/Hal2.dart';
import 'package:flutter_apptest1/Hal3.dart';
import 'package:flutter_apptest1/Hal4.dart';
import 'package:flutter_apptest1/Hal7.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedpage = 0;

  final _halaman = [
    Hal1(),
    Hal2(),
    Hal3(),
    Hal4(),
    Hal7()
  ]; //listing of all 5 page

  final bgcolor = [
    Colors.green,
    Colors.red,
    Colors.lightGreenAccent,
    Colors.yellow,
    Colors.orange,
    Colors.cyan
  ]; //color changing

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _halaman[selectedpage],
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          buttonBackgroundColor: Colors.white,
          backgroundColor: bgcolor[selectedpage],
          color: Colors.blue,
          animationCurve: Curves.linearToEaseOut,
          items: [
            Icon(Icons.home, size: 40),
            Icon(Icons.accessibility, size: 40),
            Icon(Icons.access_alarm, size: 40),
            Icon(Icons.backup_table, size: 40)
          ],
          onTap: (index) {
            setState(() {
              selectedpage = index;
            });
          },
        ));
  }
}
