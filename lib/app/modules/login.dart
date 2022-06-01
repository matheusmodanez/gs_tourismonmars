import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/components/standard_glass_button.dart';
import 'package:gs_tourismonmars/app/components/standard_textfield.dart';
import 'package:gs_tourismonmars/app/modules/add_trip.dart';
import 'package:gs_tourismonmars/app/modules/list_trips.dart';

class Login extends StatelessWidget {
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
                height: 40,
              ),
              Image(
                image: AssetImage('assets/images/MarsCompany.png'),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'E-mail',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Space Mono'),
                ),
              ),
              StandardTextField(label: 'digite seu e-mail'),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Senha',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Space Mono',
                  ),
                ),
              ),
              StandardTextField(label: 'digite sua senha'),
              SizedBox(
                height: 150,
              ),
              GlassButton(
                start: 0.1,
                end: 0.1,
                width: 300,
                height: 50,
                buttonText: 'ENTRAR',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => AddTripPage()),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
