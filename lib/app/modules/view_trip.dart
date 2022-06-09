import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/components/page.dart';
import 'package:gs_tourismonmars/app/models/trip_model.dart';
import 'package:gs_tourismonmars/utils/export.dart';

class ViewTripPage extends StatelessWidget {
  final String? cover;
  final String? date;
  final String? duration;
  final String? seats;
  final String? spaceshipModel;
  final String? firstCmderName;
  final String? firstCmderBadge;
  final String? secondCmderName;
  final String? secondCmderBadge;

  ViewTripPage({
    this.cover,
    this.date,
    this.duration,
    this.seats,
    this.spaceshipModel,
    this.firstCmderName,
    this.firstCmderBadge,
    this.secondCmderName,
    this.secondCmderBadge,
  });

  @override
  Widget build(BuildContext context) {
    return StandardPage(
        title: 'View Trip',
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(115, 1, 72, 87),
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.only(
            bottom: 45,
          ),
          child: Column(
            children: [
              Container(
                width: 650,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: AssetImage('$cover'), fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '$spaceshipModel',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 35,
                ),
                child: Column(
                  children: [
                    Text(
                      tripDate,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$date',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                             durationWrap,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '$duration',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              seatsWrap,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '$seats',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Column(
                      children: [
                        Text(
                          dataFirst,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '$name: $firstCmderName',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$badgeVar: $firstCmderBadge',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          dataSecond,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '$name: $secondCmderName',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$badgeVar: $secondCmderBadge',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        background: 'assets/images/bgviewtrip.png');
  }
}
