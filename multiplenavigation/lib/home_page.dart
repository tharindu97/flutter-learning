import 'package:flutter/material.dart';
import 'package:multiplenavigation/core/constant/keys.dart';
import 'package:multiplenavigation/features/discover/screens/discover_index_page.dart';
import 'package:multiplenavigation/features/friends/screens/friends_index_page.dart';
import 'package:multiplenavigation/features/notification/screens/notification_index_page.dart';
import 'package:multiplenavigation/features/profile/screens/profile_index_page.dart';
import 'package:multiplenavigation/features/search/screens/search_index_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const DiscoverIndexPage(),
    const SearchIndexPage(),
    const NotificationIndexPage(),
    const FriendsIndexPage(),
    const ProfileIndexPage(),
  ];

  final List<GlobalKey<NavigatorState>> navigatorKeys = [
    discoverNavigatorKey,
    searchNavigatorKey,
    notificationNavigatorKey,
    friendsNavigatorKey,
    profileNavigatorKey,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        key: bootomNavBarKey,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.lightBlue,
        showUnselectedLabels: false,
        selectedFontSize: 15,
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        onTap: (index) {
          if (selectedIndex == index) {
            var currentState = navigatorKeys[index].currentState;
            if (currentState != null) {
              navigatorKeys[index]
                  .currentState
                  ?.popUntil(ModalRoute.withName('/'));
            }
          }
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Profile',
          ),
        ],
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
    );
  }
}
