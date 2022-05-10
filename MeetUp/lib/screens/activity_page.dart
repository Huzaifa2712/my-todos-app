import 'package:connecting_hearrts/widgets/header.dart';
import 'package:flutter/material.dart';

class activitypage extends StatefulWidget {
  const activitypage({Key? key}) : super(key: key);

  @override
  State<activitypage> createState() => _activitypageState();
}

class _activitypageState extends State<activitypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: header(context),
      body: Container(
        child: const Center(
          child: Text(
            'activity page',
            style: TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 50,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
        ),
        color: Colors.black87,
      ),
    );
  }
}
