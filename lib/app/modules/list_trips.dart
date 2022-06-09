import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/components/card_list.dart';
import 'package:gs_tourismonmars/app/components/page.dart';
import 'package:gs_tourismonmars/app/models/trip_model.dart';
import 'package:gs_tourismonmars/app/modules/add_trip.dart';
import 'package:gs_tourismonmars/app/modules/view_trip.dart';
import 'package:gs_tourismonmars/utils/export.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({required this.tripList});

  List<TripModel> tripList = [];

  @override
  Widget build(BuildContext context) {
    return StandardPage(
        title: 'List View',
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(115, 1, 72, 87),
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: 25,
          ),
          child: Column(
            children: [
              Text(
                titleList,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => AddTripPage(tripList: tripList)),
                    ),
                  );
                },
                child: Text(
                  newTrip,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                shrinkWrap: true,
                itemCount: tripList.length,
                itemBuilder: ((context, index) {
                  var tripItem = tripList[index];
                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => ViewTripPage(
                                  cover: tripItem.cover,
                                  date: tripItem.date,
                                  duration: tripItem.duration.toString(),
                                  seats: tripItem.seats.toString(),
                                  spaceshipModel: tripItem.spaceshipModel,
                                  firstCmderName: tripItem.firstCmderName,
                                  firstCmderBadge: tripItem.firstCmderBadge,
                                  secondCmderName: tripItem.secondCmderName,
                                  secondCmderBadge: tripItem.secondCmderBadge,
                                )),
                          ),
                        );
                      },
                      child: StandardCard(
                        cover: tripItem.cover,
                        spaceshipModel: tripItem.spaceshipModel,
                        date: tripItem.date,
                        firstCmderName: tripItem.firstCmderName,
                        secondCmderName: tripItem.secondCmderName,
                        seats: tripItem.seats.toString(),
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
        background: 'assets/images/bglist.png');
  }
}
