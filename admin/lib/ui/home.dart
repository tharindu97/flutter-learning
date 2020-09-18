import 'package:admin/ui/image_view.dart';
import 'package:admin/ui/preview.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String quote1;
  String quote2;
  String author;
  String url;

  final db = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  final ref = FirebaseStorage.instance.ref().child('4.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'First Quotes'),
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Can't be Empty";
                      }
                      return null;
                    },
                    onChanged: (val) {
                      quote1 = val;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Second Quotes'),
                    onChanged: (val) {
                      quote2 = val;
                    },
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Can't be Empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Author'),
                    validator: (val) {
                      if (val.isEmpty) {
                        return "Can't be Empty";
                      }
                      return null;
                    },
                    onChanged: (val) {
                      author = val;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text(
                    'Final Output',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purpleAccent),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'The individual has always had to struggle to keep from being overwhelmed by the tribe. If you try it',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                        Container(
                            padding: EdgeInsets.only(right: 20),
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Friedrich Nietzsche',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ))
                      ],
                    ),
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
                          child: FlatButton(
                            textColor: Colors.white,
                            color: Color(0xFF6200EE),
                            onPressed: () {
                              _submit();
                            },
                            child: Text("Save"),
                          )),
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
                  )
                ],
              ),
            )),
      ]),
    );
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

  void _submit() async {
    try {
      // await db.collection('quotes').add(
      //     {'author': author, 'first_quote': quote1, 'second_quote': quote2});
      print('Data Save Succefully');
    } catch (e) {
      print(e);
    } finally {
      var _url = await ref.getDownloadURL();
      setState(() {
        url = _url.toString();
      });
      if (url != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ImageView(quote1, quote2, author, url)),
        );
      }
    }
  }
}
