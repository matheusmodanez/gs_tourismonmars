import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/components/glass_button.dart';
import 'package:gs_tourismonmars/app/modules/login.dart';
import 'package:gs_tourismonmars/utils/export.dart';

class IntroPage extends StatelessWidget {
  Future<void> _showDialog({
    required BuildContext context,
  }) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(team, textAlign: TextAlign.justify,),
            backgroundColor: Color.fromARGB(255, 1, 72, 87),
            contentTextStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bgintro.png'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 45,
            right: 45,
            top: 70,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Image(
                image: AssetImage('assets/images/MarsCompany.png'),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
               intro,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GlassButton(
                start: 0.1,
                end: 0.1,
                width: 300,
                height: 50,
                buttonText: begin,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => Login()),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 125,
              ),
              ElevatedButton(
                onPressed: () {
                  _showDialog(context: context);
                },
                child: Text(
                  about,
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
