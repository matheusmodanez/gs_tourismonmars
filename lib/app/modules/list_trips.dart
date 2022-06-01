import 'package:flutter/material.dart';
import 'package:gs_tourismonmars/app/components/standard_card.dart';
import 'package:gs_tourismonmars/app/components/standard_page.dart';
import 'package:gs_tourismonmars/app/models/trip_model.dart';

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
          child: Padding(
            padding: EdgeInsets.only(
              left: 25,
              right: 25,
              top: 25,
            ),
            child: Column(
              children: [
                Text(
                  'lista de viagens',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Space Mono',
                    fontWeight: FontWeight.bold,
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
                          print(tripItem.cover);
                        },
                        child: StandardCard(
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
        ),
        background: 'assets/images/bglist.png');
  }
}