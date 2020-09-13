import 'package:flutter/material.dart';

class HeroType{
  String title;
  String subTitle;
  String image;
  MaterialColor materialColor;

  HeroType(
    this.title,
    this.subTitle,
    this.image,
    this.materialColor
  );

  List<HeroType> createSampleList(){
    List _heroType = List<HeroType>();
    return _heroType
      ..add(HeroType(
        'Tharindu', 
        'Panama Collage', 
        'images/app.jpg', 
        Colors.red))
      ..add(HeroType(
        'Darshna', 
        'Nugewal Central Collage', 
        'images/app.jpg', 
        Colors.green))
      ..add(HeroType(
        'Tharindu Bandara', 
        'Darmaraj Collage', 
        'images/app.jpg', 
        Colors.blue));
  }
}