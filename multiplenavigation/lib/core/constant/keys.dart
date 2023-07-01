import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> globalNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'Global');
final GlobalKey<NavigatorState> discoverNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'Discover');
final GlobalKey<NavigatorState> searchNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'Search');
final GlobalKey<NavigatorState> notificationNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'Notification');
final GlobalKey<NavigatorState> friendsNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'Friends');
final GlobalKey<NavigatorState> profileNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'Profile');

final GlobalKey bootomNavBarKey = GlobalKey(debugLabel: 'btm_app_bar');
