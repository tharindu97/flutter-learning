import 'package:admin/ui/preview.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageView extends StatefulWidget {
  String quote1;
  String quote2;
  String author;
  String _url;
  ImageView(this.quote1, this.quote2, this.author, this._url);

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  String url;
  final ref = FirebaseStorage.instance.ref().child('4.png');
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Flexible(
                        flex: 2,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('Image'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        flex: 2,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('Color'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        flex: 2,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('Video'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              '${widget.quote1}, ${widget.quote2}',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  '${widget.author}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )),
                            Flexible(
                              child: Image.network(
                                '${widget._url}',
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Flexible(
                        flex: 2,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('Save'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        flex: 2,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('Edit'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        flex: 2,
                        child: RaisedButton(
                          onPressed: () {
                            _getImage();
                          },
                          child: Text('Preview'),
                        ),
                      )
                    ],
                  ),
                ],
              ))
        ],
      ),
    ));
  }

  void _getImage() async {
    var _url = await ref.getDownloadURL();
    setState(() {
      url = _url.toString();
    });
    if (url != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Preview(url)),
      );
    }
  }
}
