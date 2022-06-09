import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/components/page.dart';
import 'package:gs_tourismonmars/app/components/textfield.dart';
import 'package:gs_tourismonmars/app/models/trip_model.dart';
import 'package:gs_tourismonmars/app/modules/list_trips.dart';
import 'package:gs_tourismonmars/utils/export.dart';

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
                newTrip,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
               tripDate,
                style: TextStyle(
                  fontSize: 15,
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
                    duration,
                    style: TextStyle(
                      fontSize: 15,
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
                    seats,
                    style: TextStyle(
                      fontSize: 15,
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
                    shipModel,
                    style: TextStyle(
                      fontSize: 15,
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
               dataFirst,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                   name,
                    style: TextStyle(
                      fontSize: 15,
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
                    badge,
                    style: TextStyle(
                      fontSize: 15,
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
                dataSecond,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 15,
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
                    badge,
                    style: TextStyle(
                      fontSize: 15,
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
                  save,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
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
