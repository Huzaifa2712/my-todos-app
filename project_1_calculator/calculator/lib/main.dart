import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget button(var btntxt) {
    return Expanded(
      child: RawMaterialButton(
        child: Text(
          btntxt,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: () {},
        shape: Border.all(
            color: Colors.white, width: 2.5, style: BorderStyle.solid),
        fillColor: Colors.black,
        padding: EdgeInsets.all(20),
        splashColor: Colors.grey,
      ),
    );
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CALCULATOR',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: Text('Calculator',
              style: TextStyle(
                fontFamily: 'huzaifa',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              )),
        ),
        body: Center(
          child: Container(
            height: 800,
            width: 500,
            color: Colors.grey,
            margin: EdgeInsets.only(left: 100, right: 100),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      button('7'),
                      SizedBox(width: 7),
                      button('8'),
                      SizedBox(width: 7),
                      button('9'),
                      SizedBox(width: 7),
                      button('/'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      button('4'),
                      SizedBox(width: 7),
                      button('5'),
                      SizedBox(width: 7),
                      button('6'),
                      SizedBox(width: 7),
                      button('x'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      button('1'),
                      SizedBox(width: 7),
                      button('2'),
                      SizedBox(width: 7),
                      button('3'),
                      SizedBox(width: 7),
                      button('-'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      button('0'),
                      SizedBox(width: 7),
                      button('.'),
                      SizedBox(width: 7),
                      button('='),
                      SizedBox(width: 7),
                      button('+'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
