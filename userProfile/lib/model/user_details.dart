import 'package:flutter/material.dart';

class Details{
  
  String title;
  String subTitle;
  String image;
  MaterialColor materialColor;

  Details(
    this.title,
    this.subTitle,
    this.image,
    this.materialColor
  );

  List<Details> createSampleList(){
    List _detailsType = List<Details>();
    return _detailsType
      ..add(Details(
        'Maths', 
        'Panama Collage',
        'images/4.png',
         Colors.orange
        ))
      ..add(Details(
        'Physics', 
        'Nugewal Central Collage',
        'images/5.png',
         Colors.grey
        ))
      ..add(Details(
        'Chemistry', 
        'Panama Collage',
        'images/4.png',
         Colors.purple
        ))
      ..add(Details(
        'Biology', 
        'Panama Collage',
        'images/5.png',
        Colors.amber
        ))
      ..add(Details(
        'Geography', 
        'Panama Collage',
        'images/4.png',
          Colors.teal
        ))
      ..add(Details(
        'Sinhala', 
        'Panama Collage',
        'images/5.png',
          Colors.green
        ))
      ..add(Details(
        'Arts & Humanities', 
        'Panama Collage',
        'images/4.png',
        Colors.yellow
        ))
      ..add(Details(
        'Medicine', 
        'Panama Collage',
        'images/5.png',
          Colors.cyan
        ))
      ..add(Details(
        'English Language', 
        'Panama Collage',
        'images/4.png',
         Colors.pink
        ));
  }
}