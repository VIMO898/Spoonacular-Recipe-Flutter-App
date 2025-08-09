import 'package:app/screens/favorite_recipe_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/search_overview_screen.dart';
import 'package:app/screens/settings_screen.dart';
import 'package:flutter/material.dart';

import 'about_us_screen.dart';

class ScreensWithBottomNav extends StatefulWidget {
  const ScreensWithBottomNav({super.key});

  @override
  State<ScreensWithBottomNav> createState() => _ScreensWithBottomNavState();
}

class _ScreensWithBottomNavState extends State<ScreensWithBottomNav> {
  int _currScreenIndex = 0;
  final _screens = [
    HomeScreen(),
    SearchOverviewScreen(),
    FavoriteRecipeScreen(),
    SettingsScreen(),
    AboutUsScreen(),
  ];
  void _handleScreenIndexChange(int index) =>
      setState(() => _currScreenIndex = index);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Spoonacular',
          style: textTheme.headlineLarge!.copyWith(
            fontFamily: 'Telma',
            fontWeight: FontWeight.w800,
            color: theme.primaryColor,
          ),
        ),
        centerTitle: true,
      ),
      body: IndexedStack(index: _currScreenIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBarTheme(
        data: theme.bottomNavigationBarTheme,
        child: BottomNavigationBar(
          currentIndex: _currScreenIndex,
          onTap: _handleScreenIndexChange,
          // elevation: 4,
          // backgroundColor: Colors.white,
          // selectedItemColor: theme.primaryColor,
          // unselectedItemColor: Colors.grey.shade800,
          // iconSize: 26,
          // selectedFontSize: 14,
          // unselectedFontSize: 14,
          // selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              activeIcon: _homeBottomNavIcon(Icons.home),
              icon: _homeBottomNavIcon(Icons.home_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              activeIcon: _homeBottomNavIcon(Icons.search),
              icon: _homeBottomNavIcon(Icons.search_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Favorites',
              activeIcon: _homeBottomNavIcon(Icons.favorite),
              icon: _homeBottomNavIcon(Icons.favorite_outline),
            ),
            // BottomNavigationBarItem(
            //   label: 'Downloads',
            //   icon: _homeBottomNavIcon(Icons.kitchen_outlined),
            // ),
            BottomNavigationBarItem(
              label: 'Settings',
              activeIcon: _homeBottomNavIcon(Icons.settings),
              icon: _homeBottomNavIcon(Icons.settings_outlined),
            ),
          ],
        ),
      ),
    );
  }

  Widget _homeBottomNavIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 4),
      child: Icon(icon),
    );
  }
}
