import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tennis_app/screens/match_finito.dart';

import 'package:tennis_app/screens/prenatato_organisato.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/radio_button_widgets.dart';
import 'package:tennis_app/widgets/rating_star.dart';
import 'package:tennis_app/widgets/textfield_widget.dart';

class TennisClubRecension extends StatefulWidget {
  const TennisClubRecension({super.key});

  @override
  State<TennisClubRecension> createState() => _TennisClubRecensionState();
}

class _TennisClubRecensionState extends State<TennisClubRecension> {
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
          "Tennis Club",
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
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Tennis Club Lightgreen",
                          style: vscolor,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                // Divider(
                //   thickness: 3,
                //   color: Appcolor.divivdercolor,
                //   height: 5,
                // ),

                Container(
                  child: Row(
                    children: [],
                  ),
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
                    Text("Centro Sportivo Lightgreen \n Segrate, Milano")
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
                    const Spacer(),
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
                    const Spacer(),
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
                    const Spacer(),
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
                    const Spacer(),
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
                    const Spacer(),
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
                    const Spacer(),
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
                  color: Appcolor.divivdercolor,
                  height: 5,
                  thickness: 3,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "Tenuto bene",
                      style: text_color,
                    ),
                    const Spacer(),
                  Rating()
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "Organizza tornei",
                      style: text_color,
                    ),
                    const Spacer(),
                   Rating()
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "Rapporto quaità-prezzo",
                      style: text_color,
                    ),
                    const Spacer(),
                   Rating()
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "Cortesia e disponibilità",
                      style: text_color,
                    ),
                    const Spacer(),
                     Rating()
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      " Professionalità",
                      style: text_color,
                    ),
                Rating()
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(
                  child: CustomButton(
                      width: width * 0.7,
                      height: height * 0.05,
                      text: 'Salva',
                      color: Appcolor.buttonnewcolor,
                      onpressed: (() {})),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

