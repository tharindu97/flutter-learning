// import 'package:flutter/material.dart';
// import 'package:userProfile/model/user_details.dart';

// class Buckets extends StatefulWidget {

//   @override
//   _BucketsState createState() => _BucketsState();
// }

// class _BucketsState extends State<Buckets> {

//   List _detailTypeList = List<Details>();
//   double _screenWidthAdjustment;
  

//   @override
//   void initState() {
//     super.initState();
//     _detailTypeList = Details('tharindu','panama','images/4.png', Colors.cyan).createSampleList();
//   }

// @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _screenWidthAdjustment = MediaQuery.of(context).size.width - 48.0 - 64.0;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             //Header
//             Container(
//               height: 280,
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: Color(0xFFBC4DFF)
//               ),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     top: 20,
//                     left: 5,
//                     child: Icon(
//                       Icons.arrow_back_ios,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Positioned(
//                     top: 20,
//                     right: 5,
//                     child: Icon(
//                       Icons.menu,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Positioned(
//                     top: 70,
//                     left: 25,
//                     child: Container(
//                       height: 70,
//                       width: 70,
//                       decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                         image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
//                         fit: BoxFit.fill
//                       ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: 80,
//                     left: 120,
//                     child: Text('Marry',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold
//                       ),
//                     )
//                   ),
//                   Positioned(
//                     top: 115,
//                     left: 120,
//                     child: Text('colombo, sri lanka',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                         fontWeight: FontWeight.normal
//                       ),
//                     )
//                   ),
//                   Positioned(
//                     top: 85,
//                     right: 20,
//                     child: RaisedButton(
//                       child: Text(
//                         'Follow',
//                         style: TextStyle(
//                           color: Color(0xFFBC4DFF),
//                         ),
//                       ),
//                       color: Colors.white,
//                       onPressed: (){}
//                     )
//                   ),
//                   Positioned(
//                     bottom: 40,
//                     left: 100,
//                     child: Text('648',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold
//                       ),
//                     )
//                   ),
//                   Positioned(
//                     bottom: 20,
//                     left: 100,
//                     child: Text(
//                       'Follow',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                         fontWeight: FontWeight.normal
//                       ),
//                     )
//                   ),
//                   Positioned(
//                     bottom: 40,
//                     left: 218,
//                     child: Text('9',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold
//                       ),
//                     )
//                   ),
//                   Positioned(
//                     bottom: 20,
//                     left: 200,
//                     child: Text(
//                       'Bucket',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                         fontWeight: FontWeight.normal
//                       ),
//                     )
//                   ),
//                   Positioned(
//                     bottom: 40,
//                     right: 25,
//                     child: Text('2848',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold
//                       ),
//                     )
//                   ),
//                   Positioned(
//                     bottom: 20,
//                     right: 25,
//                     child: Text(
//                       'Followers',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                         fontWeight: FontWeight.normal
//                       ),
//                     )
//                   )
//                 ],
//               ),
//             ),
//             //Buckets
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   SizedBox(height: 10,),
//                   Text('Buckets',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 30
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   // Row(
//                   //     children: [
//                   //       Expanded(
//                   //         child: ListView.builder(
//                   //           itemCount: 2,
//                   //           itemBuilder: (BuildContext context, int index){
//                   //             return GestureDetector(
//                   //               child: Card(
//                   //                 margin: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
//                   //                 elevation: 4.0,
//                   //                 shape: RoundedRectangleBorder(
//                   //                     borderRadius: BorderRadius.circular(12.0),
//                   //                 ),
//                   //                 clipBehavior: Clip.antiAlias,
//                   //                 child: Stack(
//                   //                   children: [
//                   //                     Hero(
//                   //                       tag: 'background',
//                   //                       child: Container(
//                   //                         color: Colors.blueGrey,
//                   //                         width: 100,
//                   //                       ),
//                   //                     )
//                   //                   ],
//                   //                 ),
//                   //               ),
//                   //             );
//                   //           }
//                   //         ),
//                   //       ),
//                   //     ],
//                   //   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   Text('Shorts',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 30
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

