// ignore_for_file: prefer_const_constructors

import 'package:assignment_4/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment-4',
      theme: ThemeData(fontFamily: "Ubuntu"),
      home: HomePage(),
    );
  }
}
