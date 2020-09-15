import 'package:flutter/material.dart';
import 'package:slimyCard/image.dart';
import 'package:slimy_card/slimy_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.pinkAccent,
          primaryColorLight: Color(0xFFFBE0E6),
          accentColor: Color(0xFF1B1F32)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Slimy Card'),
          centerTitle: true,
        ),
        body: StreamBuilder(
            initialData: false,
            stream: slimyCard.stream,
            builder: ((BuildContext context, AsyncSnapshot snapshot) {
              return ListView(
                children: [
                  SizedBox(height: 100,),
                  SlimyCard(
                    //default color
                    color: Colors.pinkAccent,
                    width: 300.0,
                    // borderRadius: 0.0,
                    slimeEnabled: true,
                    topCardHeight: 300,
                    bottomCardHeight: 150,
                    topCardWidget: _topCard(
                      (snapshot.data) ? logoRound : logo,
                    ),
                    bottomCardWidget: _bottomCard(),
                  ),
                ],
              );
            })));
  }

  Widget _topCard(String image) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100.0,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Color(0xFFFBE0E6),
              borderRadius: BorderRadius.circular(16.0)),
          child: Image(
            image: AssetImage(image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'The Tech Designer',
            style: TextStyle(
                color: Color(0xFFFBE0E6),
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Youtube Chanel',
            style: TextStyle(color: Color(0xFFFBE0E6), fontSize: 20.0),
          ),
        ),
      ],
    );
  }

  Widget _bottomCard() {
    return Text(
      'Welcome to you \n "The Tech Designer" \n Youtube Chanel',
      style: TextStyle(
        color: Color(0xFFFBE0E6),
        fontSize: 18.0,
      ),
      textAlign: TextAlign.center,
    );
  }
}
