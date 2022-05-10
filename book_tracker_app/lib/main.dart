import 'package:book_tracker_app/screens/starting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book_Tracker_App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartingPage(),
    );
  }
}
