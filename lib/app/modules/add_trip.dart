import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/components/page.dart';
import 'package:gs_tourismonmars/app/components/textfield.dart';
import 'package:gs_tourismonmars/app/models/trip_model.dart';
import 'package:gs_tourismonmars/app/modules/list_trips.dart';

class AddTripPage extends StatefulWidget {
  List<TripModel> tripList = [];
  AddTripPage({required this.tripList});

  @override
  State<StatefulWidget> createState() {
    return _AddTripPageState(tripList: tripList);
  }
}

class _AddTripPageState extends State<AddTripPage> {
  TextEditingController dateController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController seatsController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController fcommanderNameController = TextEditingController();
  TextEditingController fcommanderBadgeController = TextEditingController();
  TextEditingController scommanderNameController = TextEditingController();
  TextEditingController scommanderBadgeController = TextEditingController();
  FocusNode dateFocus = FocusNode();
  FocusNode durationFocus = FocusNode();
  FocusNode seatsFocus = FocusNode();
  FocusNode modelFocus = FocusNode();
  FocusNode fcommanderNameFocus = FocusNode();
  FocusNode fcommanderBadgeFocus = FocusNode();
  FocusNode scommanderNameFocus = FocusNode();
  FocusNode scommanderBadgeFocus = FocusNode();

  List<TripModel> tripList = [];

  _AddTripPageState({required this.tripList});

  List<String> coverPaths = [
    'assets/images/trip1.png',
    'assets/images/trip2.png',
    'assets/images/trip3.png',
    'assets/images/trip4.png',
  ];

  addNewTrip({
    required String? cover,
    required String? date,
    required String? duration,
    required String? seats,
    required String? spaceshipModel,
    required String? firstCmderName,
    required String? firstCmderBadge,
    required String? secondCmderName,
    required String? secondCmderBadge,
  }) {
    setState(() {
      tripList.insert(
        0,
        TripModel(
          cover: cover,
          date: date,
          duration: num.parse(duration.toString()),
          seats: num.parse(seats.toString()),
          spaceshipModel: spaceshipModel,
          firstCmderName: firstCmderName,
          firstCmderBadge: firstCmderBadge,
          secondCmderName: secondCmderName,
          secondCmderBadge: secondCmderBadge,
        ),
      );
    });
  }

  String chooseCover() {
    var index = Random().nextInt(4);
    String cover = coverPaths[index];
    return cover;
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(
      title: 'List View',
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(115, 1, 72, 87),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 25,
          ),
          child: Column(
            children: [
              Text(
                'nova viagem',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Space Mono',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Data da Decolagem',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Space Mono',
                ),
              ),
              StandardTextField(
                label: '',
                focusNode: dateFocus,
                userInputController: dateController,
                onEditingComplete: () {
                  durationFocus.nextFocus();
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Duração da viagem',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Space Mono',
                    ),
                  ),
                  StandardTextField(
                    width: 50,
                    label: '',
                    focusNode: durationFocus,
                    userInputController: durationController,
                    onEditingComplete: () {
                      seatsFocus.nextFocus();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quantidade de Assentos',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Space Mono',
                    ),
                  ),
                  StandardTextField(
                    width: 50,
                    label: '',
                    focusNode: seatsFocus,
                    userInputController: seatsController,
                    onEditingComplete: () {
                      modelFocus.nextFocus();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Modelo da Nave',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Space Mono',
                    ),
                  ),
                  StandardTextField(
                    width: 150,
                    label: '',
                    focusNode: modelFocus,
                    userInputController: modelController,
                    onEditingComplete: () {
                      fcommanderNameFocus.nextFocus();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'DADOS DO PRIMEIRO COMANDANTE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Space Mono',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nome',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Space Mono',
                    ),
                  ),
                  StandardTextField(
                    width: 150,
                    label: '',
                    focusNode: fcommanderNameFocus,
                    userInputController: fcommanderNameController,
                    onEditingComplete: () {
                      fcommanderBadgeFocus.nextFocus();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Matrícula \nInterespacial',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Space Mono',
                    ),
                  ),
                  StandardTextField(
                    width: 150,
                    label: '',
                    focusNode: fcommanderBadgeFocus,
                    userInputController: fcommanderBadgeController,
                    onEditingComplete: () {
                      scommanderNameFocus.nextFocus();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'DADOS DO SEGUNDO COMANDANTE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Space Mono',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nome',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Space Mono',
                    ),
                  ),
                  StandardTextField(
                    width: 150,
                    label: '',
                    focusNode: scommanderNameFocus,
                    userInputController: scommanderNameController,
                    onEditingComplete: () {
                      scommanderBadgeFocus.nextFocus();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Matrícula \nInterespacial',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Space Mono',
                    ),
                  ),
                  StandardTextField(
                    width: 150,
                    label: '',
                    focusNode: scommanderBadgeFocus,
                    userInputController: scommanderBadgeController,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  addNewTrip(
                      cover: chooseCover(),
                      date: dateController.text,
                      duration: durationController.text,
                      seats: seatsController.text,
                      spaceshipModel: modelController.text,
                      firstCmderName: fcommanderNameController.text,
                      firstCmderBadge: fcommanderBadgeController.text,
                      secondCmderName: scommanderNameController.text,
                      secondCmderBadge: scommanderBadgeController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => ListViewPage(tripList: tripList)),
                    ),
                  );
                },
                child: Text(
                  'salvar viagem',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Space Mono',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Color.fromARGB(255, 1, 50, 65),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      background: 'assets/images/bgnewtrip.png',
    );
  }
}
