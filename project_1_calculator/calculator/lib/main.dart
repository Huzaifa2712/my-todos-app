import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = '0';

  String _output = '0';

  double num1 = 0;

  double num2 = 0;

  String operand = '';

  Operation(String btntxt) {
    if (btntxt == 'AC') {
      _output = '0';
      num2 = 0;
      num1 = 0;
      operand = '';
    } else if (btntxt == '+' ||
        btntxt == '-' ||
        btntxt == 'x' ||
        btntxt == '/') {
      num1 = double.parse(output);
      operand = btntxt;
      _output = '0';
    } else if (btntxt == '=') {
      num2 = double.parse(output);

      if (operand == '+') {
        _output = (num1 + num2).toString();
      }
      if (operand == '-') {
        _output = (num1 - num2).toString();
      }
      if (operand == 'x') {
        _output = (num1 * num2).toString();
      }
      if (operand == '/') {
        _output = (num1 / num2).toString();
      }
      num1 = 0;
      num2 = 0;
      operand = '';
    } else {
      _output = _output + btntxt;
    }
    setState(() {
      output = int.parse(_output).toString();
    });
  }

  Widget button(String btntxt) {
    return Expanded(
      child: RawMaterialButton(
        child: Text(
          btntxt,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: () {
          Operation(btntxt);
        },
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
        backgroundColor: Colors.blue[900],
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
            height: 600,
            width: 400,
            color: Colors.grey[900],
            margin: EdgeInsets.only(left: 100, right: 100),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                      child: Container(
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        border: Border.all(color: Colors.white, width: 2.5)),
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      output,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.all(20),
                  )),
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
                      button('AC'),
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
