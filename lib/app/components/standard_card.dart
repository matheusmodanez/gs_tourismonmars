import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/models/trip_model.dart';
import 'package:gs_tourismonmars/app/modules/view_trip.dart';

class StandardCard extends StatelessWidget {
  final String? cover;
  final String? date;
  final String? duration;
  final String? seats;
  final String? spaceshipModel;
  final String? firstCmderName;
  final String? firstCmderBadge;
  final String? secondCmderName;
  final String? secondCmderBadge;

  StandardCard({
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
    return Container(
      height: 200,
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: ((context) => ViewTripPage(trip: trip,)),
                    //   ),
                    // );
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('$cover'), fit: BoxFit.cover),
                        shape: BoxShape.circle),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  '$date',
                  style:
                      TextStyle(color: Colors.white, fontFamily: 'Space Mono'),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$spaceshipModel',
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 22, 173, 243),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Space Mono'),
              ),
              Text(
                'Primeiro Comandante',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Space Mono'),
              ),
              Text(
                'Nome: $firstCmderName',
                style: TextStyle(color: Colors.white, fontFamily: 'Space Mono'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Segundo Comandante',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Space Mono'),
              ),
              Text(
                'Nome: $secondCmderName',
                style: TextStyle(color: Colors.white, fontFamily: 'Space Mono'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Assentos: $seats',
                style: TextStyle(color: Colors.white, fontFamily: 'Space Mono'),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
