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

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Device Info'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Device Info'),
          Text('Flutter World for Mobile',
            style: TextStyle(
              fontSize: 24,
              color: Colors.deepPurple,
              decoration: TextDecoration.underline,
              decorationColor: Colors.deepPurpleAccent,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold
            ),
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.justify,
          )
        ],
      )
    );
  }
}