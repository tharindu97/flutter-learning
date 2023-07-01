import 'package:flutter/material.dart';

class DiscoverHomePage extends StatefulWidget {
  const DiscoverHomePage({super.key});

  @override
  State<DiscoverHomePage> createState() => _DiscoverHomePageState();
}

class _DiscoverHomePageState extends State<DiscoverHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Doscover"),
      ),
    );
  }
}
