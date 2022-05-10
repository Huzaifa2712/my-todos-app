import 'package:connecting_hearrts/screens/activity_page.dart';
import 'package:connecting_hearrts/screens/home_page.dart';
import 'package:connecting_hearrts/screens/message_page.dart';
import 'package:connecting_hearrts/screens/profile_page.dart';
import 'package:connecting_hearrts/screens/search_page.dart';
import 'package:connecting_hearrts/widgets/header.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    const homepage(),
    const message(),
    const search(),
    const activitypage(),
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
          Icon(Icons.home),
          Icon(Icons.message),
          Icon(Icons.search),
          Icon(Icons.favorite),
          Icon(Icons.person),
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
