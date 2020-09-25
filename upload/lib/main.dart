import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:upload/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}
