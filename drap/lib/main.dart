import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drag',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var top = 10.0;
  var left = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Drag'),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.circular(15)
        ),
        child: GestureDetector(
          child: Stack(
            children: [
              Positioned(
                top: top,
                left: left,
                child: Text(
                  'Tharindu \n Kavishna',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold
                  ),
                  )
              )
            ],
          ),
          onVerticalDragUpdate: (DragUpdateDetails dd){
            setState(() {
              top = dd.localPosition.dy;
              left = dd.localPosition.dx;
            });
          },
          
        ),
      ),
    );
  }
}
