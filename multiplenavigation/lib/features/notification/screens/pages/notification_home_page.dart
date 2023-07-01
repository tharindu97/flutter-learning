import 'package:flutter/material.dart';
import 'package:multiplenavigation/core/constant/keys.dart';

class NotificationHomePage extends StatefulWidget {
  const NotificationHomePage({super.key});

  @override
  State<NotificationHomePage> createState() => _NotificationHomePageState();
}

class _NotificationHomePageState extends State<NotificationHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Notification"),
          ElevatedButton(
            onPressed: () {
              notificationNavigatorKey.currentState!
                  .pushReplacementNamed("/viewNotification");
            },
            child: const Text("View Notification"),
          )
        ],
      ),
    );
  }
}
