import 'package:connecting_hearrts/screens/feed_page.dart';
import 'package:connecting_hearrts/screens/home_page.dart';
import 'package:connecting_hearrts/screens/message_page.dart';
import 'package:connecting_hearrts/screens/profile_page.dart';
import 'package:connecting_hearrts/widgets/header.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final screens = [
    const homepage(),
    const message(),
    const feedpage(),
    const profilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.grey,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.white,
        items: const [
          Icon(
            Icons.home,
          ),
          Icon(Icons.favorite),
          Icon(Icons.person),
          Icon(Icons.message)
        ],
        onTap: (index) => setState(() => currentIndex = index),
        animationDuration: const Duration(
          milliseconds: 500,
        ),
        animationCurve: Curves.fastLinearToSlowEaseIn,
      ),
    );
  }
}
