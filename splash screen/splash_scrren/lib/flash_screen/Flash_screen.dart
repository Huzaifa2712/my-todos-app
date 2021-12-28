import 'package:flutter/material.dart';

class Flash_Screen extends StatelessWidget {
  const Flash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(
            child: Text(
              'hello',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          //child: Stack(
          //  alignment: Alignment.center,
          //  children: [
          //    Positioned(
          //      child: Image.network(
          //        'https://pbs.twimg.com/profile_images/990194902926475264/oG4amJeN_400x400.jpg',
          //      ),
          //    ),
          //  ],
        ),
      ),
    );
  }
}
