import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Container(
          child: new Material(
            child: new InkWell(
              onTap: () {
                print("tapped");
              },
              child: new Container(
                width: 100.0,
                height: 100.0,
              ),
            ),
            color: Colors.transparent,
          ),
          color: Colors.orange,
        ),
      ),
    );
  }
}
