import 'package:flutter/material.dart';
import 'package:multiplenavigation/core/constant/keys.dart';

class ViewNotificationPage extends StatefulWidget {
  const ViewNotificationPage({super.key});

  @override
  State<ViewNotificationPage> createState() => _ViewNotificationPageState();
}

class _ViewNotificationPageState extends State<ViewNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Notificatioon App Bar"),
        leading: IconButton(
          onPressed: () {
            notificationNavigatorKey.currentState!.pushReplacementNamed("/");
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: const Center(
        child: Text("View Notification Page"),
      ),
    );
  }
}
