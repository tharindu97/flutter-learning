import 'package:flutter/material.dart';
import 'package:userProfile/model/user_profile.dart';
import 'dart:ui' as ui;

class Designer extends StatefulWidget {
  @override
  _DesignerState createState() => _DesignerState();
}

class _DesignerState extends State<Designer> {
  List _profileTypeList = List<Profile>();
  final double _borderRadius = 24;

  @override
  void initState() {
    super.initState();
    _profileTypeList = Profile(
      'tharindu',
      'SE',
      '1',
      '123',
      '15',
      '74',
      'dhsrh',
      Color(0xffFFB157),
      Color(0xffFFA057),
    ).profileList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: _profileTypeList.length,
      itemBuilder: (context, index) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    gradient: LinearGradient(colors: [
                      _profileTypeList[index].startColor,
                      _profileTypeList[index].endColor
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    boxShadow: [
                      BoxShadow(
                        color: _profileTypeList[index].endColor,
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: CustomPaint(
                    size: Size(100, 150),
                    painter: CustomCardShapePainter(
                        _borderRadius,
                        _profileTypeList[index].startColor,
                        _profileTypeList[index].endColor),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 30,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Positioned.fill(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          _profileTypeList[index].image,
                          height: 64,
                          width: 64,
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _profileTypeList[index].name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              _profileTypeList[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Avenir',
                              ),
                            ),
                            SizedBox(height: 36),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Flexible(
                                        flex: 2,
                                        child: Text(
                                          _profileTypeList[index].like,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Avenir',
                                            fontSize: 10
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Rank',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Avenir',
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Flexible(
                                        flex: 2,
                                        child: Text(
                                          _profileTypeList[index].follow,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontFamily: 'Avenir',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Rank',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Avenir',
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Flexible(
                                        flex: 2,
                                        child: Text(
                                          _profileTypeList[index].followers,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontFamily: 'Avenir',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'Rank',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Avenir',
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              _profileTypeList[index].rank.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Avenir',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Ranking',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Avenir',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
