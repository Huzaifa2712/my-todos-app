import 'package:connecting_hearrts/widgets/header.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: Container(
        child: const Center(
          child: Text(
            'home page',
            style: TextStyle(
                fontSize: 30, fontStyle: FontStyle.italic, color: Colors.white),
          ),
        ),
        color: Colors.black87,
      ),
    );
  }
}
