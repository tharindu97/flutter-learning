import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List<DocumentSnapshot> products = [];
  bool loadingProducts = true;
  DocumentSnapshot lastDocuments;
  ScrollController scrollController = ScrollController();
  int perPage = 7;
  bool gettingMoreProducts = false;
  bool moreProductsAvailbale = true;


  getProducts() async {
    Query q =
        firebaseFirestore.collection('products').orderBy('name').limit(perPage);
    setState(() {
      loadingProducts = true;
    });
    QuerySnapshot querySnapshot = await q.get();
    products = querySnapshot.docs;
    lastDocuments = querySnapshot.docs[querySnapshot.docs.length - (1)];
    setState(() {
      loadingProducts = false;
    });
  }

  getMoreProducts() async {
    print('Get More Product Called');
    if(moreProductsAvailbale == false){
      print('No more Products');
      return;
    }
    if(gettingMoreProducts == true){
      return;
    }
    gettingMoreProducts = true;
    Query q = firebaseFirestore
        .collection('products')
        .orderBy('name')
        .startAfter([lastDocuments.data()]).limit(perPage);
    QuerySnapshot querySnapshot = await q.get();
    if(querySnapshot.docs.length < perPage){
      moreProductsAvailbale = false;
    }
    lastDocuments = querySnapshot.docs[querySnapshot.docs.length - (1)];
    products.addAll(querySnapshot.docs);
    setState(() {
    });
    gettingMoreProducts = false;
  }

  @override
  void initState() {
    getProducts();
    scrollController.addListener(() {  
         double maxScroll = scrollController.position.maxScrollExtent;  
         double currentScroll = scrollController.position.pixels;  
         double delta = MediaQuery.of(context).size.height * 0.20;  
         if (maxScroll - currentScroll <= delta) {  
           getMoreProducts(); 
         }  
       });  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: loadingProducts == true
          ? Container(
              child: Center(
                child: Text('Loading......'),
              ),
            )
          : Container(
              child: products.length == 0
                  ? Center(
                      child: Text('No Data'),
                    )
                  : ListView.builder(
                    controller: scrollController,
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(8),
                          child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                products[index].data()['name'],
                                style: TextStyle(fontSize: 25),
                              ))),
                        );
                      }),
            ),
    );
  }
}
