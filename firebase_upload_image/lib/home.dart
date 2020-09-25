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

  //select an image gallery or camera
  getImage(ImageSource source) async {
    final pickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  // Upload Image ** FireStore

  final FirebaseStorage _storage = FirebaseStorage(storageBucket: 'gs://cloud-a45ad.appspot.com/photo');
  final db = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  StorageUploadTask _uploadTask;

  void _startUpload() async{

    String filePath = 'photo/${DateTime.now()}.jpg';
    final ref = FirebaseStorage.instance.ref().child(filePath);
    var _url = await ref.getDownloadURL();
    setState(() {
      _uploadTask = _storage.ref().child(filePath).putFile(File(_imageFile.path));
        url = _url.toString();
    });
    await db.collection('photo').add({'url' : url});
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
              SizedBox(height: 300,),
              RaisedButton(
                onPressed: (){
                  getImage(ImageSource.camera);
                },
                child: Text('Select'),
              ),
              SizedBox(height: 50,),
              RaisedButton(
                onPressed: (){
                  if(_uploadTask != null){
                    print('Error');
                  }else{
                    _startUpload();
                    print('object');
                  }
                },
                child: Text('Upload'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}