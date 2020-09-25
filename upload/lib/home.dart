import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  String url;
  String filename;

  //select an image gallery or camera
  getImage(ImageSource source) async {
    final pickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  // Upload Image ** FireStore

  final FirebaseStorage _storage = FirebaseStorage(storageBucket: 'gs://cloud-9e7f3.appspot.com');
  final db = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  StorageUploadTask _uploadTask;

  void _startUpload() {
    String filePath = '${DateTime.now()}.png';
    // print(filePath);
    print('object');
    setState(() {
      _uploadTask = _storage.ref().child(filePath).putFile(File(_imageFile.path));
      filename = filePath;
      // print(filename);
    });
    print('Successfully!');
  }

  Future<void> upload() async {
    print('$filename');
    // final ref = FirebaseStorage.instance.ref().child('$filename');
    var _url = await(await _uploadTask.onComplete).ref.getDownloadURL();
    setState(() {
      url = _url.toString();
      print(url);
    });
    await db.collection('photo').add({'url': url});
    print('success');
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 400,),
              RaisedButton(
                onPressed: () => getImage(ImageSource.camera),
                child: Text('select'),
              ),
              RaisedButton(
                child: Text('Save'),
                onPressed: () {
                  if(_uploadTask != null){
                    print('Error');
                  }else{
                    _startUpload();
                    upload();
                  }
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}