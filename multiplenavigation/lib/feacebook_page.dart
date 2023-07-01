import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:multiplenavigation/core/constant/keys.dart';
import 'package:multiplenavigation/home_page.dart';
import 'package:multiplenavigation/onboarding_page.dart';

class FacebookApp extends StatefulWidget {
  const FacebookApp({super.key});

  @override
  State<FacebookApp> createState() => _FacebookAppState();
}

class _FacebookAppState extends State<FacebookApp> {
  @override
  void initState() {
    routeUserForAuth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var app = MaterialApp(
      title: "FaceBook Apploication",
      navigatorKey: globalNavigatorKey,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: getMaterialPageRouteSettings(),
    );
    return app;
  }

  _getPageRoutes(BuildContext context, RouteSettings settings) {
    switch (settings.name) {
      case '/onboarding':
        return const OnboardingPage();
      case '/welcome':
        return Container();
      case '/home':
        return const HomePage();
      default:
        return Container();
    }
  }

  static void routeUserForAuth() async {
    bool firstRun = await IsFirstRun.isFirstCall();
    if (firstRun) {
      globalNavigatorKey.currentState!.pushReplacementNamed('/onboarding');
    } else {
      globalNavigatorKey.currentState!.pushReplacementNamed('/home');
    }
  }

  MaterialPageRoute Function(RouteSettings settings)
      getMaterialPageRouteSettings() {
    return (RouteSettings settings) {
      return MaterialPageRoute(
        settings: settings,
        builder: (BuildContext context) => _getPageRoutes(context, settings),
      );
    };
  }
}
