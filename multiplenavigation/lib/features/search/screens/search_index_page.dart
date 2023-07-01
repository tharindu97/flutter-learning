import 'package:flutter/material.dart';
import 'package:multiplenavigation/core/constant/keys.dart';
import 'package:multiplenavigation/features/search/screens/search_home_page.dart';

class SearchIndexPage extends StatefulWidget {
  static const index = 1;
  const SearchIndexPage({super.key});

  @override
  State<SearchIndexPage> createState() => _SearchIndexPageState();
}

class _SearchIndexPageState extends State<SearchIndexPage> {
  final SearchHomePage searchHomePage = const SearchHomePage();
  @override
  Widget build(BuildContext context) {
    return HeroControllerScope(
      controller: MaterialApp.createMaterialHeroController(),
      child: Navigator(
        key: searchNavigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return searchHomePage;

                default:
                  return searchHomePage;
              }
            },
          );
        },
      ),
    );
  }
}
