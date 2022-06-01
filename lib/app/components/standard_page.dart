import 'package:flutter/material.dart';

class StandardPage extends StatelessWidget {
  final Widget body;
  final String title;
  final String background;

  StandardPage(
      {required this.title, required this.body, required this.background});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(background), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 40,
          ),
          child: SingleChildScrollView(
            child: body,
          ),
        ),
      ),
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
      ),
    );
  }
}
