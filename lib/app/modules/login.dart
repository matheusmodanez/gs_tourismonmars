import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/components/glass_button.dart';
import 'package:gs_tourismonmars/app/components/textfield.dart';
import 'package:gs_tourismonmars/app/models/trip_model.dart';
import 'package:gs_tourismonmars/app/modules/add_trip.dart';
import 'package:gs_tourismonmars/app/modules/list_trips.dart';
import 'package:gs_tourismonmars/utils/export.dart';

class Login extends StatelessWidget {

  List<TripModel> tripList = [
    TripModel(
        cover: 'assets/images/trip3.png',
        date: '01/01/2150',
        duration: 15,
        seats: 5,
        firstCmderName: 'Rômulo Domiciano',
        firstCmderBadge: '0001-XY',
        secondCmderName: 'Daniel Amaral',
        secondCmderBadge: '0002-XX',
        spaceshipModel: 'XPTO-13'),
    TripModel(
        cover: 'assets/images/trip2.png',
        date: '13/04/2077',
        duration: 32,
        seats: 12,
        firstCmderName: 'Matheus Modanez',
        firstCmderBadge: '0123-XY',
        secondCmderName: 'Isabela Caovila',
        secondCmderBadge: '0456-XX',
        spaceshipModel: 'QWERTY09'),
    TripModel(
        cover: 'assets/images/trip4.png',
        date: '23/09/2050',
        duration: 7,
        seats: 4,
        firstCmderName: 'Rômulo Domiciano',
        firstCmderBadge: '0001-XY',
        secondCmderName: 'Isabela Caovila',
        secondCmderBadge: '0456-XX',
        spaceshipModel: 'M4RS-11'),
  ];

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
                  email,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              StandardTextField(label: 'digite seu e-mail'),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  password,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
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
                buttonText: login,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => ListViewPage(tripList: tripList,)),
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
