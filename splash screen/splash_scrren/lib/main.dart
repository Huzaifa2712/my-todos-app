import 'package:flutter/material.dart';
import 'flash_screen/Flash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flash_Screen();
  }
}
