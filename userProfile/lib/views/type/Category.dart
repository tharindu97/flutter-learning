import 'package:flutter/material.dart';
import 'package:userProfile/model/user_details.dart';

class Category extends StatefulWidget {

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  List _detailTypeList = List<Details>();
  double _screenWidthAdjustment;
  

  @override
  void initState() {
    super.initState();
    _detailTypeList = Details('tharindu','panama','images/4.png', Colors.cyan).createSampleList();
  }

@override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidthAdjustment = MediaQuery.of(context).size.width - 48.0 - 64.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 5,),
              Expanded(
                child: ListView.builder(
                  itemExtent: 100.0,
                  itemCount: _detailTypeList.length,
                  itemBuilder: (BuildContext context, int index){
                    return GestureDetector(
                      child: Card(
                         margin: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
                         elevation: 4.0,
                         shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)
                         ),
                         clipBehavior: Clip.antiAlias,
                         child: Stack(
                           children: [
                             Hero(
                              tag: 'background' + _detailTypeList[index].title,
                              child: Container(
                                color: _detailTypeList[index].materialColor,
                              ),
                            ),
                            Positioned(
                              top: 10.0,
                              left: 10.0,
                              width: _screenWidthAdjustment,
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  '${_detailTypeList[index].title}',
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 20,
                                     fontWeight: FontWeight.bold
                                   ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 40,
                              left: 10,
                              width: _screenWidthAdjustment,
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  '${_detailTypeList[index].subTitle} \n${_detailTypeList[index].subTitle}',
                                  style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 12,
                                     fontWeight: FontWeight.normal
                                   ),
                                ),
                              )
                            ),
                            Positioned(
                              top: 20.0,
                              left: 150,
                              width: _screenWidthAdjustment,
                              child: Material(
                                color: Colors.transparent,
                                child: Image.asset(
                                  _detailTypeList[index].image,
                                  height: 100,
                                ),
                              )
                            )
                           ],
                         ),
                      ),
                    );
                  }
                ),
              )
            ],
          ),
    ));
  }
}