import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondPage extends StatefulWidget {
  String payload;
  SecondPage({this.payload});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('data'),
      ),
    );
  }
}