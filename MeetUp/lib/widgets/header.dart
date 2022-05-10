import 'dart:ui';

import 'package:flutter/material.dart';

AppBar header(context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.black,
    title: const Text(
      'MeetUp',
      style: TextStyle(
          fontFamily: 'DancingScript',
          fontSize: 38,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    ),
  );
}
