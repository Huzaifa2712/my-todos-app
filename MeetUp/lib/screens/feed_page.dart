import 'package:connecting_hearrts/widgets/header.dart';
import 'package:flutter/material.dart';

class feedpage extends StatefulWidget {
  const feedpage({Key? key}) : super(key: key);

  @override
  State<feedpage> createState() => _feedpageState();
}

class _feedpageState extends State<feedpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: Container(
        child: const Center(
          child: Text(
            'feed page',
            style: TextStyle(
                fontSize: 30, fontStyle: FontStyle.italic, color: Colors.white),
          ),
        ),
        color: Colors.black87,
      ),
    );
  }
}
