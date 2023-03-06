import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tennis_app/screens/lesson_finite.dart';
import 'package:tennis_app/screens/match_finito.dart';

import 'package:tennis_app/screens/prenatato_organisato.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/radio_button_widgets.dart';
import 'package:tennis_app/widgets/textfield_widget.dart';

class Matchfinito extends StatefulWidget {
  const Matchfinito({super.key});

  @override
  State<Matchfinito> createState() => _MatchfinitoState();
}

class _MatchfinitoState extends State<Matchfinito> {
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
          "Challenge",
          style: heading_text,
        )),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 27.0, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        Circle(radius: 50, images: ImagePath.loginlogo),
                        Text(
                          "Novak",
                          style: radio_text_color,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Divider(
                  thickness: 3,
                  color: Appcolor.divivdercolor,
                  height: 5,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date: 24.12.2022 ",
                        style: textc,
                      ),
                      Text(
                        "Time:  20:00",
                        style: textc,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 26.0),
                          child: Column(
                            children: [
                              Text(
                                "You",
                                style: radio_text_color,
                              ),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Text(
                                "Nadal",
                                style: radio_text_color,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Table(
                              defaultColumnWidth: FixedColumnWidth(80.0),
                              children: [
                                TableRow(children: [
                                  Column(children: [
                                    Text('Sets', style: textc),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    TextFields(
                                        textStyle: TextStyle(
                                            color: Appcolor.hinttext_color),
                                        textAligns: TextAlign.center,
                                        width: width * 0.1,
                                        height: height * 0.04,
                                        text: ''),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    TextFields(
                                        textStyle: TextStyle(
                                            color: Appcolor.hinttext_color),
                                        textAligns: TextAlign.center,
                                        width: width * 0.1,
                                        height: height * 0.04,
                                        text: '')
                                  ]),
                                  Column(children: [
                                    Text('Games', style: textc),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    TextFields(
                                        textStyle: TextStyle(
                                            color: Appcolor.hinttext_color),
                                        textAligns: TextAlign.center,
                                        width: width * 0.1,
                                        height: height * 0.04,
                                        text: ''),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    TextFields(
                                        textStyle: TextStyle(
                                            color: Appcolor.hinttext_color),
                                        textAligns: TextAlign.center,
                                        width: width * 0.1,
                                        height: height * 0.04,
                                        text: '')
                                  ]),
                                  Column(children: [
                                    Text('Points', style: textc),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    TextFields(
                                        textStyle: TextStyle(
                                            color: Appcolor.hinttext_color),
                                        textAligns: TextAlign.center,
                                        width: width * 0.1,
                                        height: height * 0.04,
                                        text: ''),
                                    SizedBox(
                                      height: height * 0.02,
                                    ),
                                    TextFields(
                                        textStyle: TextStyle(
                                            color: Appcolor.hinttext_color),
                                        textAligns: TextAlign.center,
                                        width: width * 0.1,
                                        height: height * 0.04,
                                        text: '')
                                  ]),
                                ]),
                              ]),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nadal Wins",
                      style: finito,
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Divider(
                  thickness: 3,
                  color: Appcolor.divivdercolor,
                  height: 5,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "Circolo1",
                      style: radio_text_color,
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "Indirizzo:",
                      style: circoloservizi,
                    ),
                    SizedBox(
                      width: width * 0.06,
                    ),
                    Text(
                      "Centro Sportivo Giovani \n Cimabue, Milano     ",
                      style: textc,
                    )
                  ],
                ),
                Divider(
                  thickness: 3,
                  color: Appcolor.divivdercolor,
                  height: 5,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "Servizi",
                      style: radio_text_color,
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    Text(
                      "Bar",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Spogliatoi",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Vendita palline ",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Negozio interno",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      " Servizio incordatura",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Ristorante",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Divider(
                  thickness: 3,
                  color: Appcolor.divivdercolor,
                  height: 5,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "Campi",
                      style: radio_text_color,
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  children: [
                    Text(
                      "Play it",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Cemento",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Terra",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Erba",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Luci",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Riscldamento",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Coperto",
                      style: text_color,
                    ),
                    Spacer(),
                    CustomRadioButton(
                        val: -1,
                        value: 1,
                        text: 'Si',
                        style: text_color,
                        onChanged: ((p0) {})),
                    CustomRadioButton(
                        val: 0,
                        value: 2,
                        text: 'No',
                        style: text_color,
                        onChanged: ((p0) {}))
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: CustomButton(
                      color: Appcolor.buttonnewcolor,
                      width: width * 0.7,
                      height: height * 0.05,
                      text: 'Salva',
                      onpressed: (() {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Lessonfinito() ));
                      })),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
