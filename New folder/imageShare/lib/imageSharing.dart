import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  Future<void> shareData() async{
    try {
      final ByteData bytes = await rootBundle.load('assets/1.jpg');
      await Share.file('esys image', 'esys.png', bytes.buffer.asUint8List(), 'image/png', text: 'My optional text.');
    } catch (e) {
      print('error: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Sharing'),
        centerTitle: true,
      ),
      body: Center(
        child: Image.asset('assets/1.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => await shareData(),
        child: Icon(Icons.share),
      ),
    );
  }
}