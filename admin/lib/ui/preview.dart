import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Preview extends StatefulWidget {
  String _url;
  Preview(this._url);

  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 500,
              decoration: BoxDecoration(color: Colors.green),
              child: Image.network('${widget._url}'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.yellow),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Row(
          children: [
            SizedBox(width: 20,),
            IconButton(
              icon: Icon(Icons.home), 
              onPressed: (){}
            ),
            SizedBox(width: 15,),
            IconButton(
              icon: Icon(Icons.favorite), 
              onPressed: (){}
            ),
            SizedBox(width: 15,),
            IconButton(
              icon: Icon(Icons.thumb_up), 
              onPressed: (){}
            ),
            SizedBox(width: 15,),
            IconButton(
              icon: Icon(Icons.thumb_down), 
              onPressed: (){}
            ),
            SizedBox(width: 15,),
            IconButton(
              icon: Icon(Icons.arrow_back_ios), 
              onPressed: (){}
            ),
            SizedBox(width: 15,),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: (){}
            ),
          ],
        ),
      )
    );
  }
}
