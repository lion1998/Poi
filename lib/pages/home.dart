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
  int _index = 0;
  List<Widget> _pages = [TodayPage(), CategoryPage(), DiscoverPage(), SearchPage(), ProfilePage(),];


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
        bottomNavigationBar:
            BottomNavigationBar(
              currentIndex: _index,
              onTap: (int index) {
                setState(() {
                  _index = index;
                });
              },
              backgroundColor: Colors.black,  items: [
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
        ]),
      ),
    );
  }
}
