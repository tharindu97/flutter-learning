import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double _scale = 1.0;
  double _previewScale = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onScaleStart: (ScaleStartDetails details){
            print(details);
            _previewScale = _scale;
            setState(() {});
          },
          onScaleUpdate: (ScaleUpdateDetails details){
            print(details);
            _scale = _previewScale * details.scale;
            setState(() {});
          },
          onScaleEnd: (ScaleEndDetails details){
            print(details);
            _previewScale = 1.0;
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Transform(
              transform: Matrix4.diagonal3(Vector3(_scale, _scale, _scale)),
              child: Text('data')
              ),
          )
          )
      ),
    );
  }
}
