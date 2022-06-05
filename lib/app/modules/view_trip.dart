import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/components/standard_page.dart';
import 'package:gs_tourismonmars/app/models/trip_model.dart';

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
            bottom: 35,
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
                            // backgroundColor: Color.fromARGB(185, 1, 50, 65),
                            color: Colors.white,
                            fontFamily: 'Space Mono',
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.edit_note_outlined),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                      ),
                    )
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
                      'Data da Decolagem',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Space Mono',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$date',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Space Mono',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Duração \nda Viagem',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Space Mono',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '$duration',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Space Mono',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Assentos \nDisponíveis',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Space Mono',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '$seats',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Space Mono',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        Text(
                          'Dados do Primeiro Comandante',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Space Mono',
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Nome: $firstCmderName',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Space Mono',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Matrícula: $firstCmderBadge',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Space Mono',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        Text(
                          'Dados do Segundo Comandante',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Space Mono',
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Nome: $secondCmderName',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Space Mono',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Matrícula: $secondCmderBadge',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Space Mono',
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
