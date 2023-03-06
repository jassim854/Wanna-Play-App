import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:tennis_app/screens/challenge_prenatato.dart';
import 'package:tennis_app/utilities/constant/button_text_style.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/googlemapwidget.dart';
import 'package:tennis_app/widgets/pop_up_call.dart';
import 'package:tennis_app/widgets/rating_star.dart';

class CircoloVisitor extends StatelessWidget {
  double value = 3.5;
  CircoloVisitor({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.textfield_color,
        title: Text("Circolo 1", style: heading_text),
      ),

      // body: SingleChildScrollView(
      // child: Container(
      //   width: double.infinity,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       SizedBox(
      //         height: height * 0.05,
      //       ),
      //       Container(width: 182, height: 182, child: Circle(url: '')),
      //       SizedBox(
      //         height: height * 0.04,
      //       ),
      //       Text(
      //         'Circolo 1',
      //         style: heading_text,
      //       ),
      //       SizedBox(
      //         height: height * 0.015,
      //       ),
      //       RatingStars(),
      //       SizedBox(
      //         height: height * 0.04,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Flexible(
      //               child: Text(
      //             "Tentuo bene",
      //             style: circolocolr,
      //           )),
      //           Flexible(child: RatingStars())
      //         ],
      //       ),
      //       SizedBox(
      //         height: height * 0.02,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Text("Organizza molti tornei", style: circolocolr),
      //           RatingStars()
      //         ],
      //       ),
      //       SizedBox(
      //         height: height * 0.02,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Text("Rapporto Qualità prezzo", style: circolocolr),
      //           RatingStars()
      //         ],
      //       ),
      //       SizedBox(
      //         height: height * 0.02,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Text("Cortesia e disponibilità", style: circolocolr),
      //           RatingStars()
      //         ],
      //       ),
      //       SizedBox(
      //         height: height * 0.02,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Text("Professionalità", style: circolocolr),
      //           RatingStars()
      //         ],
      //       ),
      //       SizedBox(
      //         height: height * 0.02,
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //       ),
      //       SizedBox(
      //         height: height * 0.02,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 "Sevizi:",
      //                 style: circoloservizi,
      //               ),
      //               SizedBox(
      //                 height: height * 0.02,
      //               ),
      //               Text(
      //                 "Bar \n Spogliatoi \n Vendita palline\n Negozio interno \n Servizio incordatura \n Ristorante",
      //                 style: textc,
      //               )
      //             ],
      //           ),
      //           Column(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 "Campi",
      //                 style: circoloservizi,
      //               ),
      //               SizedBox(
      //                 height: height * 0.02,
      //               ),
      //               Text(
      //                 "Play it \n Cemento \n  Terra \n  Erba \n  Luci \n Riscldamento \n  Coperto \n  Scoperto",
      //                 style: textc,
      //               )
      //             ],
      //           )
      //         ],
      //       ),
      //       SizedBox(
      //         height: height * 0.02,
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //       ),
      //       SizedBox(
      //         height: height * 0.03,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             "Indirizzo:",
      //             style: circoloservizi,
      //           ),
      //           SizedBox(
      //             width: width * 0.2,
      //           ),
      //           Text(
      //             "Centro Sportivo Giovani \n       Cimabue, Milano",
      //             style: textc,
      //           )
      //         ],
      //       ),
      //       SizedBox(
      //         height: height * 0.01,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             "Telefono",
      //             style: circoloservizi,
      //           ),
      //           SizedBox(
      //             width: width * 0.3,
      //           ),
      //           Text(
      //             " 00000000000000",
      //             style: textc,
      //           )
      //         ],
      //       ),
      //       SizedBox(
      //         height: height * 0.01,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             "Email:",
      //             style: circoloservizi,
      //           ),
      //           SizedBox(
      //             width: width * 0.3,
      //           ),
      //           Text(
      //             "esempio@email.com",
      //             style: textc,
      //           ),
      //         ],
      //       ),
      //       SizedBox(
      //         height: height * 0.03,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           CustomButton(
      //               width: width * 0.35,
      //               height: height * 0.05,
      //               text: "Call",
      //               onpressed: () {}),
      //           CustomButton(
      //               width: width * 0.48,
      //               height: height * 0.05,
      //               text: "Show Directions",
      //               onpressed: () {}),
      //           SizedBox(
      //             height: height * 0.1,
      //           ),
      //         ],
      //       ),
      //       Container(height: 500, child: GoogleMapWidget())
      //     ],
      //   ),
      // ),
      // ),

      body: SingleChildScrollView(
        child: Container(
          height: 1500,
          child: Stack(
            children: [
              GoogleMapWidget(),
              Container(
                height: 1060,
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Container(
                      width: 182,
                      height: 182,
                      child: Circle(radius: 50, images: ImagePath.circolologo),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Text(
                      'Circolo 1',
                      style: heading_text,
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                   Rating(),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                            child: Text(
                          "Tentuo bene",
                          style: circolocolr,
                        )),
                        Flexible(child:  Rating())
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Organizza molti tornei", style: circolocolr),
                       Rating()
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Rapporto Qualità prezzo", style: circolocolr),
                         Rating()
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Cortesia e disponibilità", style: circolocolr),
                       Rating()
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Professionalità", style: circolocolr),
                     Rating()
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sevizi:",
                              style: circoloservizi,
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Bar \n Spogliatoi \n Vendita palline\n Negozio interno \n Servizio incordatura \n Ristorante",
                              style: textc,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Campi",
                              style: circoloservizi,
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "Play it \n Cemento \n  Terra \n  Erba \n  Luci \n Riscldamento \n  Coperto \n  Scoperto",
                              style: textc,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Indirizzo:",
                          style: circoloservizi,
                        ),
                        SizedBox(
                          width: width * 0.2,
                        ),
                        Text(
                          "Centro Sportivo Giovani \n       Cimabue, Milano",
                          style: textc,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Telefono",
                          style: circoloservizi,
                        ),
                        SizedBox(
                          width: width * 0.3,
                        ),
                        Text(
                          " 00000000000000",
                          style: textc,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Email:",
                          style: circoloservizi,
                        ),
                        SizedBox(
                          width: width * 0.3,
                        ),
                        Text(
                          "esempio@email.com",
                          style: textc,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButton(
                            color: Appcolor.buttonnewcolor,
                            width: width * 0.35,
                            height: height * 0.05,
                            text: "Call",
                            onpressed: () {
                              popupaccpet(
                                context,
                              );
                            }),
                        CustomButton(
                            width: width * 0.48,
                            color: Appcolor.buttonnewcolor,
                            height: height * 0.05,
                            text: "Show Directions",
                            onpressed: () {}),
                        SizedBox(
                          height: height * 0.1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
