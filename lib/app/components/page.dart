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
    );
  }
}
