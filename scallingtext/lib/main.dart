import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
  double _height;
  double _initHeight;

  @override
  void initState() {
    _initHeight = 20.0;
    _height = _initHeight;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleUpdate: (ScaleUpdateDetails details){
        _height = _initHeight + (_initHeight * (details.scale * .5));
      } ,
      onScaleEnd: (ScaleEndDetails details){
        setState(() {
          _initHeight = _height;
        });
      },
      child: Scaffold(
        body: Center(
          child: SizedBox(
              height: _height,
              child: FittedBox(
                child: Text(
                  'tharindu kavishna',
                  textAlign: TextAlign.center,
                ),
              )),
        ),
      ),
    );
  }
}
