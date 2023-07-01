import 'package:flutter/material.dart';

class FriendsHomePage extends StatefulWidget {
  const FriendsHomePage({super.key});

  @override
  State<FriendsHomePage> createState() => _FriendsHomePageState();
}

class _FriendsHomePageState extends State<FriendsHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Friends"),
      ),
    );
  }
}
