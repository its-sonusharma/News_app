import 'package:flutter/material.dart';
import 'package:newz_app/home.dart';
void main() {
  runApp(Home(),
  );
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

