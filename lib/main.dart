import 'package:flutter/material.dart';
import 'package:market_app/h.dart';
import 'package:market_app/mainlayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      // home: home_screen(),
      home: mainlayout(),
    );
  }
}
//loading//chemer 