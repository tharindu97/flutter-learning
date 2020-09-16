
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile{

  String name;
  String title;
  String rank;
  String like;
  String follow;
  String followers;
  String image;
  Color startColor;
  Color endColor;

  Profile(this.name, this.title, this.rank, this.like, this.follow, this.followers, this.image, this.startColor, this.endColor);

  List<Profile> profileList(){
    List _profilesType = List<Profile>();
    return _profilesType
      ..add(Profile(
          'Tharindu Kavishna',
          'Software Engineer',
          '1',
          '100',
          '52',
          '45',
          'images/4.png',
          Color(0xff6DC8F3), 
          Color(0xff73A1F9),
        ))
      ..add(Profile(
          'Tharindu Kavishna',
          'Software Engineer',
          '1',
          '100',
          '52',
          '45',
          'images/5.png',
          Color(0xffFFB157), 
          Color(0xffFFA057),
        ))
        ..add(Profile(
          'Tharindu Kavishna',
          'Software Engineer',
          '1',
          '100',
          '52',
          '45',
          'images/4.png',
          Color(0xffFF5B95), 
          Color(0xffF8556D),
        ))
        ..add(Profile(
          'Tharindu Kavishna',
          'Software Engineer',
          '1',
          '100',
          '52',
          '45',
          'images/5.png',
          Color(0xffD76EF5), 
          Color(0xff8F7AFE),
        ))
      ..add(Profile(
          'Tharindu Kavishna',
          'Software Engineer',
          '1',
          '100',
          '52',
          '45',
          'images/4.png',
          Color(0xff42E695), 
          Color(0xff3BB2B8)
        ))
        ..add(Profile(
          'Tharindu Kavishna',
          'Software Engineer',
          '1',
          '100',
          '52',
          '45',
          'images/5.png',
          Color(0xff6DC8F3), 
          Color(0xff73A1F9),
        ))
        ..add(Profile(
          'Tharindu Kavishna',
          'Software Engineer',
          '1',
          '100',
          '52',
          '45',
          'images/4.png',
          Color(0xffFF5B95), 
          Color(0xffF8556D),
        ))
      ..add(Profile(
          'Tharindu Kavishna',
          'Software Engineer',
          '1',
          '100',
          '52',
          '45',
          'images/5.png',
          Color(0xff42E695), 
          Color(0xff3BB2B8)
        ))
        ..add(Profile(
          'Tharindu Kavishna',
          'Software Engineer',
          '1',
          '100',
          '52',
          '45',
          'images/4.png',
          Color(0xffFFB157), 
          Color(0xffFFA057),
        ));

  } 

}