import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'favorites_screen.dart';

class BottomBarTab extends StatefulWidget {
  const BottomBarTab({super.key});

  @override
  State<BottomBarTab> createState() => _BottomBarTabState();
}

class _BottomBarTabState extends State<BottomBarTab> {
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Favorites',
    }
  ];

  // final List<Widget> _pages = const [
  //   CategoriesScreen(),
  //   FavoritesScreen(),
  // ];

  // final List<String> selectedTitles = const [
  //   'Categories',
  //   'Favorites',
  // ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        type: BottomNavigationBarType.shifting, // for animation
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            icon: const Icon(Icons.star),
            label: 'Favorites',
          )
        ],
      ),
    );
  }
}
