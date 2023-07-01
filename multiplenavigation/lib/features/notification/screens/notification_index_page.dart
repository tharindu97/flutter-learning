import 'package:flutter/material.dart';
import 'package:multiplenavigation/core/constant/keys.dart';
import 'package:multiplenavigation/features/notification/screens/pages/view_notification_page.dart';

import 'pages/notification_home_page.dart';

class NotificationIndexPage extends StatefulWidget {
  static const index = 2;
  const NotificationIndexPage({super.key});

  @override
  State<NotificationIndexPage> createState() => _NotificationIndexPageState();
}

class _NotificationIndexPageState extends State<NotificationIndexPage> {
  final NotificationHomePage notificationHomePage =
      const NotificationHomePage();
  final ViewNotificationPage viewNotificationPage =
      const ViewNotificationPage();
  @override
  Widget build(BuildContext context) {
    return HeroControllerScope(
      controller: MaterialApp.createMaterialHeroController(),
      child: Navigator(
        key: notificationNavigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return notificationHomePage;
                case '/viewNotification':
                  return viewNotificationPage;
                default:
                  return notificationHomePage;
              }
            },
          );
        },
      ),
    );
  }
}
