import 'package:connecting_hearrts/widgets/header.dart';
import 'package:flutter/material.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: header(context),
      body: Container(
        child: const Center(
          child: Text(
            'profile page',
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
