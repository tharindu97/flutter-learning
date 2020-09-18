// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';

// class Storage {

//   String quote1;
//   String quote2;
//   String author;
//   String url;

//   Storage(this.quote1, this.quote2, this.author, this.url);

//   final db = FirebaseFirestore.instance;
//   final ref = FirebaseStorage.instance.ref().child('4.png');

//   void _submit() async {
//     try {
//       await db.collection('quotes').add(
//           {'author': author, 'first_quote': quote1, 'second_quote': quote2});
//       print('Data Save Succefully');
//     } catch (e) {
//       print(e);
//     }
//   }

//   void _getImage() async {
//     var _url = await ref.getDownloadURL();
//     url = _url.toString();
//     if (url == null) {
//       print('Erro');
//     }
//   }

// }
