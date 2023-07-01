import 'package:flutter/material.dart';
import 'package:multiplenavigation/core/constant/keys.dart';
import 'package:multiplenavigation/features/friends/screens/friends_home_page.dart';

class FriendsIndexPage extends StatefulWidget {
  static const index = 3;
  const FriendsIndexPage({super.key});

  @override
  State<FriendsIndexPage> createState() => _FriendsIndexPageState();
}

class _FriendsIndexPageState extends State<FriendsIndexPage> {
  final FriendsHomePage friendsHomePage = const FriendsHomePage();
  @override
  Widget build(BuildContext context) {
    return HeroControllerScope(
      controller: MaterialApp.createMaterialHeroController(),
      child: Navigator(
        key: friendsNavigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return friendsHomePage;

                default:
                  return friendsHomePage;
              }
            },
          );
        },
      ),
    );
  }
}
