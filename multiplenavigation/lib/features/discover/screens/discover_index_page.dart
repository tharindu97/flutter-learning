import 'package:flutter/material.dart';
import 'package:multiplenavigation/core/constant/keys.dart';
import 'package:multiplenavigation/features/discover/screens/discover_home_page.dart';

class DiscoverIndexPage extends StatefulWidget {
  static const index = 0;
  const DiscoverIndexPage({super.key});

  @override
  State<DiscoverIndexPage> createState() => _DiscoverIndexPageState();
}

class _DiscoverIndexPageState extends State<DiscoverIndexPage> {
  final DiscoverHomePage discoverHomePage = const DiscoverHomePage();
  @override
  Widget build(BuildContext context) {
    return HeroControllerScope(
      controller: MaterialApp.createMaterialHeroController(),
      child: Navigator(
        key: discoverNavigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return discoverHomePage;

                default:
                  return discoverHomePage;
              }
            },
          );
        },
      ),
    );
  }
}
