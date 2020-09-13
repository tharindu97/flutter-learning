import 'package:flutter/material.dart';
import 'package:heroAnimation/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    )
  );
}

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hero Animation',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List _heroTypeList = List<HeroType>();
//   double _screenWidthAdjustment;

//   @override
//   void initState() {
//     super.initState();
//     _heroTypeList = HeroType().createSampleList();
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _screenWidthAdjustment = MediaQuery.of(context).size.width - 48.0 - 64.0;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }