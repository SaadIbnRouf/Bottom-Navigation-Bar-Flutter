import 'package:flutter/material.dart';
import 'views/homePageView.dart';
import 'views/profilePageView.dart';
import 'views/searchPageView.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentSelectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentSelectedPage,
        onDestinationSelected: (int index) {
          setState(() {
            currentSelectedPage = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
            selectedIcon: Icon(Icons.home_filled),
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
            selectedIcon: Icon(Icons.search_outlined),
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
            selectedIcon: Icon(Icons.person_rounded),
          ),
        ],
      ),
      body: const [
        HomePageView(),
        SearchPageView(),
        ProfilePageView()
      ][currentSelectedPage],
    );
  }
}
