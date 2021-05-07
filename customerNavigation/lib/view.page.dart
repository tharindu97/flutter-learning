import 'package:customerNavigation/home.dart';
import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 60,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/bg.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            height: 60.0,
            width: double.infinity,
            padding: EdgeInsets.only(top: 5.0, bottom: 20.0),
            color: Color(0xFFFD5F1FB),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      print('Back Arrow');
                    }),
                IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      print('Forward Arrow');
                    }),
                IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }),
                IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      print('Favorite');
                    }),
                IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      print('Share');
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
