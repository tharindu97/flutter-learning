import 'dart:io';
import 'dart:typed_data';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screenshot/screenshot.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Share Screenshot'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _imageFile;

  //Create an instance of ScreenshotController
  ScreenshotController screenshotController = ScreenshotController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Screenshot(
        controller: screenshotController,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/quest-a7b53.appspot.com/o/quotes%2Fnature%2F1603101150996-kaiyu-wu-DtLZpJI3aSg-unsplash.jpg?alt=media&token=e2a846da-9ac7-4462-a57c-a3fe9c89571f'),
              fit: BoxFit.cover
            )
          ),
          child: new Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success.\n -James Cameron",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _takeScreenshotandShare();
        },
        tooltip: 'Increment',
        child: Icon(Icons.share),
      ),
    );
  }

  _takeScreenshotandShare() async {
    _imageFile = null;
    screenshotController
        .capture(delay: Duration(milliseconds: 10), pixelRatio: 2.0)
        .then((File image) async {
      setState(() {
        _imageFile = image;
      });
      final directory = (await getApplicationDocumentsDirectory()).path;
      Uint8List pngBytes = _imageFile.readAsBytesSync();
      File imgFile = new File('$directory/quotes.png');
      imgFile.writeAsBytes(pngBytes);
      print("File Saved to Gallery");
      await Share.file('Anupam', 'quotes.png', pngBytes, 'image/png');
    }).catchError((onError) {
      print(onError);
    });
  }
}
