import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Navigator'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.pinkAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tharindu Kavishna')
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.pinkAccent,
        height: 50,
        items: <Widget>[
          Icon(Icons.add),
          Icon(Icons.list),
          Icon(Icons.phone),
          Icon(Icons.camera),
        ],
        animationDuration: Duration(
          milliseconds: 0
        ),
        index: 2,
        animationCurve: Curves.easeInOut,
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}