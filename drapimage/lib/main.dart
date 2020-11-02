import 'package:flutter/material.dart';

void main() {
  runApp(TextOverImage());
}

class TextOverImage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
        return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Text Over Image Image Example'),
        ),
        body: Center(
            child: Container(
            height: 300,
            width: 300,
            child: Stack(
                children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                        image: DecorationImage(
                            image:  NetworkImage(
                                "https://thumbs.dreamstime.com/b/funny-face-baby-27701492.jpg"),
                            fit: BoxFit.fill)),
                ),
                HomePage()
                ],
            ),
            ),
        ),
        );
    }
    }

    class HomePage extends StatefulWidget {
    @override
    _HomePageState createState() => _HomePageState();
    }

    class _HomePageState extends State<HomePage> {
    Offset offset = Offset.zero;

    @override
    Widget build(BuildContext context) {
        return Container(
        child: Positioned(
            left: offset.dx,
            top: offset.dy,
            child: GestureDetector(
                onPanUpdate: (details) {
                setState(() {
                    offset = Offset(
                        offset.dx + details.delta.dx, offset.dy + details.delta.dy);
                });
                },
                child: SizedBox(
                width: 300,
                height: 300,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                    child: Text("You Think You Are Funny But You Are Not",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0,
                            color: Colors.red)),
                    ),
                ),
                )),
        ),
        );
    }
    }