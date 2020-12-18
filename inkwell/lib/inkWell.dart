import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {

          },
          child: Container(
            padding: EdgeInsets.all(10),
            child: Text('data'),
          ),
        ),
      ),
    );
  }
}