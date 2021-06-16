import 'package:flutter/material.dart';
import 'package:love_calculator/ui/home-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
      home: HomeScreen(),
    );
  }
}