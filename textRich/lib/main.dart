import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       debugShowCheckedModeBanner: false,
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
          title: Text("Rich Text Demo"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Text(
                "Motivational Quotes",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25.0),
              ),
              RichText(
                text: TextSpan(
                  text: 'The harder you work for something,',
                  style: TextStyle(fontSize: 15.0, color: Colors.lightBlue),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' The greater you\'ll feel when you achieve it',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
              Text(
                "Sentance 2",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30.0),
              ),
              RichText(
                text: TextSpan(
                  text: 'Your limitation',
                  style: TextStyle(fontSize: 15.0, color: Colors.lightBlue),
                  children: <TextSpan>[
                    TextSpan(
                      text: '— it\'s only your',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.yellow[900]),
                    ),
                    TextSpan(
                      text: ' IMAGINATION.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                          fontSize: 25),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}