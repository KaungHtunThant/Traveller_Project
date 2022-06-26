import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourist_guide/widgets/drawer.dart';

import 'categories_screen.dart';
import 'favoirtes_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    CategoriesScreen(),
    FavoirtesScreen(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_currentIndex == 0 ? "Traveller" : "Favourite Trips"),
        backgroundColor: Colors.black87,
      ),
      // drawer: Drawers(),
      body: _children[_currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   fixedColor: Theme.of(context).accentColor,
      //   backgroundColor: Theme.of(context).primaryColor,
      //   onTap: onTabTapped,
      //   currentIndex: _currentIndex,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: new Icon(Icons.home),
      //       label: 'Categories',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: new Icon(
      //         Icons.star,
      //       ),
      //       label:'Favourite',
      //     ),
      //   ],
      // ),
    );
  }
}
