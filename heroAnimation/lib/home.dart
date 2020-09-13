import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:heroAnimation/details.dart';
import 'package:heroAnimation/hero_type.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _heroTypeList = List<HeroType>();
  double _screenWidthAdjustment;

  @override
  void initState() {
    super.initState();
    _heroTypeList = HeroType().createSampleList();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidthAdjustment = MediaQuery.of(context).size.width - 48.0 - 64.0;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemExtent: 100.0,
          itemCount: _heroTypeList.length,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              child: Card(
                margin: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 0.0),
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    Hero(
                      tag: 'background' + _heroTypeList[index].title, 
                      child: Container(
                        color: _heroTypeList[index].materialColor,
                      )
                    ),
                    Positioned(
                      top: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Hero(
                        tag: 'image' + _heroTypeList[index].image, 
                        child: Image.asset(_heroTypeList[index].image,
                          fit: BoxFit.fitWidth,
                          height: 80.0,
                        )
                      )
                    ),
                    Positioned(
                      top: 96,
                      left: 32.0,
                      width: _screenWidthAdjustment,
                      child: Hero(
                        tag: 'text' + _heroTypeList[index].title, 
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            '${_heroTypeList[index].title}',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: _heroTypeList[index].metreail.shade500
                            ),
                          ),
                        ))
                    ),
                    Positioned(
                      top: 125,
                      left: 32.0,
                      width: _screenWidthAdjustment,
                      child: Hero(
                        tag: 'subTitle' + _heroTypeList[index].title, 
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            _heroTypeList[index].subTitle,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      )
                    )
                  ],
                ),
              ),
              onTap: (){
                // MaterialPageRoute
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Details(heroType: HeroType(title: _heroTypeList[index].title, subTitle: _heroTypeList[index].subTitle, image: _heroTypeList[index].image, materialColor: _heroTypeList[index].materialColor))
                  )
                );
              },
            );
          }
        )
      ),
    );
  }
}