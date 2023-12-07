import 'package:flutter/material.dart';
import 'package:recipe_app/screens/add_new_recipe.dart';
import 'package:recipe_app/screens/favorites_page.dart';
import 'package:recipe_app/screens/homescreen.dart';
import 'package:recipe_app/screens/settings_page.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeSreen(),
    AddNewRecipe(),
    FavoritesPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 0) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => _pages.elementAt(_selectedIndex)));
      }
      if (_selectedIndex == 1) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => _pages.elementAt(_selectedIndex)));
      }
      if (_selectedIndex == 2) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => _pages.elementAt(_selectedIndex)));
      }
      if (_selectedIndex == 3) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => _pages.elementAt(_selectedIndex)));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
            color: Colors.black,
          ),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
          ),
          // SvgPicture.asset(
          //     'assets/svg/icon-notification.svg',
          //   ),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: Colors.black,
          ),
          label: 'Settings',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      // const Color(0xFFF6925C),
      onTap: _onItemTapped,
      backgroundColor: Colors.white,
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    );
  }
}
