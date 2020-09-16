import 'package:flutter/material.dart';
import 'package:userProfile/views/type/Attenction.dart';
import 'package:userProfile/views/type/Category.dart';
import 'package:userProfile/views/type/designer.dart';
// import 'package:simple_animations/simple_animations.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios, size: 30,),
          toolbarHeight: 120,
          backgroundColor: Color(0xFFBC4DFF),
          bottom: TabBar(
            labelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white24
            ),
              tabs: [
                Tab(text: 'Designer'),
                Tab(text: 'Category'),
                Tab(text: 'Attention')
              ],
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.menu, size: 30,)
            )
          ],
        ),
        body: SafeArea(
            child: TabBarView(
              children: [
                Designer(),
                Category(),
                Attenction()
              ]
            ),
          )
        ),
    );
  }
}