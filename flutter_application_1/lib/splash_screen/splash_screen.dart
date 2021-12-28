import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen/home_screen.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 1),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => home())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Expanded(
        child: Container(
          color: Colors.amberAccent,
          child: Image.network(
              'https://2.bp.blogspot.com/-Jl78p93pdqs/WhkjFVanmEI/AAAAAAAAB90/wEa9qZv7-wQPBzWG51T4QOGE6Tkayz2KwCLcBGAs/s1600/login%2Bform%2Bdesign%2Binspiration.jpg'),
        ),
      ),
    );
  }
}
