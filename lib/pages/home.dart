import 'package:flutter/material.dart';

import './category.dart';
import './discover.dart';
import './profile.dart';
import './search.dart';
import './today.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _usizeIcon = 20;
  double _ssizeIcon = 30;
  int _index = 0;
  List<Widget> _pages = [
    TodayPage(),
    CategoryPage(),
    DiscoverPage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('HomePage'),
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: _pages[_index],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 20,
          selectedIconTheme: IconThemeData(
            color: Colors.blue,
            size: _ssizeIcon,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
            size: _usizeIcon,
          ),
          unselectedFontSize: 10,
          currentIndex: _index,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),
                title: Text(
                  'Today',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                  color: Colors.grey,
                ),
                title: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
                title: Text(
                  'Discover',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                title: Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.featured_play_list,
                  color: Colors.grey,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
