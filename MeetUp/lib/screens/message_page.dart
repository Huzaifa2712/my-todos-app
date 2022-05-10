import 'package:connecting_hearrts/widgets/header.dart';
import 'package:flutter/material.dart';

class message extends StatefulWidget {
  const message({Key? key}) : super(key: key);

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: Container(
        child: const Center(
          child: Text(
            'message page',
            style: TextStyle(
                fontSize: 30, fontStyle: FontStyle.italic, color: Colors.white),
          ),
        ),
        color: Colors.black87,
      ),
    );
  }
}
