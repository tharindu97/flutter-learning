import 'package:flutter/material.dart';
import 'package:matrix_gesture_detector/matrix_gesture_detector.dart';

  class HomePage extends StatefulWidget {
    HomePage({Key key}) : super(key: key); // changed

    @override
    _HomePageState createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    double scale = 0.0;

    @override
    Widget build(BuildContext context) {
      final ValueNotifier<Matrix4> notifier = ValueNotifier(Matrix4.identity());

      return Scaffold(
        appBar: AppBar(
          title: Text('Single finger Rotate text'), // changed
        ),
        body: Center(
          child: MatrixGestureDetector(
            onMatrixUpdate: (m, tm, sm, rm) {
              notifier.value = m;
            },
            child: AnimatedBuilder(
              animation: notifier,
              builder: (ctx, child) {
                return Transform(
                  transform: notifier.value,
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.red,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(top: 50),
                          child: Transform.scale(
                            scale:
                                1, // make this dynamic to change the scaling as in the basic demo
                            origin: Offset(0.0, 0.0),
                            child: Container(
                              height: 100,
                              child: Text(
                                "Two finger to zoom!!",
                                style:
                                    TextStyle(fontSize: 26, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      );
    }
  }