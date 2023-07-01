import 'package:flutter/material.dart';
import 'package:multiplenavigation/core/constant/keys.dart';
import 'package:multiplenavigation/features/profile/screens/profile_home_page.dart';

class ProfileIndexPage extends StatefulWidget {
  static const index = 4;
  const ProfileIndexPage({super.key});

  @override
  State<ProfileIndexPage> createState() => _ProfileIndexPageState();
}

class _ProfileIndexPageState extends State<ProfileIndexPage> {
  final ProfileHomePage profileHomePage = const ProfileHomePage();
  @override
  Widget build(BuildContext context) {
    return HeroControllerScope(
      controller: MaterialApp.createMaterialHeroController(),
      child: Navigator(
        key: profileNavigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return profileHomePage;

                default:
                  return profileHomePage;
              }
            },
          );
        },
      ),
    );
  }
}
