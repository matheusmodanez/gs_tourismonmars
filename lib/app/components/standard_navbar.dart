import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/modules/add_trip.dart';
import 'package:gs_tourismonmars/app/modules/intro.dart';
import 'package:gs_tourismonmars/app/modules/list_trips.dart';

class StandardNavBar extends StatefulWidget {
  const StandardNavBar({Key? key}) : super(key: key);

  @override
  _StandardNavBarState createState() => _StandardNavBarState();
}

class _StandardNavBarState extends State<StandardNavBar> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    IntroPage(),
    AddTripPage(),
    ListViewPage(tripList: []),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        mouseCursor: SystemMouseCursors.grab,
        backgroundColor: Color.fromARGB(255, 1, 72, 87),
        iconSize: 40,
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme: IconThemeData(
          color: Color.fromARGB(255, 126, 126, 126),
        ),
        unselectedItemColor: Color.fromARGB(255, 126, 126, 126),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_outlined),
            label: 'List',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
