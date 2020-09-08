import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Structure'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset('img/app.png',
              fit: BoxFit.cover,
              height: 300,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email'
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password'
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.blue,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {},
                      child: Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.grey,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {},
                    child: Text('No Account? Sign Up',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18
                     ),
                   ),
                 ),
              ),
          ],
        ),
      ),
    );
  }
}
