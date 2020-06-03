import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/Login/Roasted/RoastedHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: RoastedHome(),
      home: SignIn(),
    );
  }
}