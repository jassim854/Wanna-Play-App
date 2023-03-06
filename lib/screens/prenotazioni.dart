import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tennis_app/screens/match_finito.dart';
import 'package:tennis_app/utilities/constant/colors.dart';

import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/googlemapwidget.dart';
import 'package:tennis_app/widgets/textfield_widget.dart';

class Prenotazioni extends StatefulWidget {
  const Prenotazioni({super.key});

  @override
  State<Prenotazioni> createState() => _PrenotazioniState();
}

class _PrenotazioniState extends State<Prenotazioni> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Appcolor.textfield_color,
        title: Center(
            child: Text(
          "Partite",
          style: heading_text,
        )),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 27.0, horizontal: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Circle(radius: 50, images: ImagePath.loginlogo),
                        Text(
                          'You',
                          style: radio_text_color,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Vs",
                          style: vscolor,
                        ),
                        Image.asset(ImagePath.lessonball)
                      ],
                    ),
                    Column(
                      children: [
                        Circle(radius: 50, images: ImagePath.rafaellogo),
                        Text(
                          "Novak",
                          style: radio_text_color,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                TextFields(
                    width: width * 0.7,
                    height: height * 0.05,
                    text: "geolocalizzazione link google"),
                SizedBox(
                  height: height * 0.04,
                ),
                Divider(
                  color: Appcolor.divivdercolor,
                  thickness: 6,
                ),
                Container(
                  height: 300,
                  child: GoogleMapWidget(),
                ),
                Divider(
                  color: Appcolor.divivdercolor,
                  thickness: 6,
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: height * 0.04,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        2, 9), // changes position of shadow
                                  ),
                                ],
                                color: Appcolor.containercolor,
                                borderRadius: BorderRadius.circular(18)),
                            child: Center(
                              child: Text(
                                "Date: 24.12.2022 ",
                                style: textc,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: height * 0.04,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(2, 9), // changes position of shadow
                              ),
                            ],
                            color: Appcolor.containercolor,
                            borderRadius: BorderRadius.circular(18)),
                        child: Center(
                          child: Text(
                            "Time:  20:00",
                            style: textc,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(2, 9), // changes position of shadow
                            ),
                          ],
                          color: Appcolor.containercolor,
                          borderRadius: BorderRadius.circular(18)),
                      child: TableCalendar(
                          daysOfWeekVisible: true,
                          pageAnimationEnabled: true,
                          focusedDay: today,
                          firstDay: DateTime.utc(2010, 10, 16),
                          lastDay: DateTime.utc(2030, 3, 14))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
