import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:tennis_app/screens/coachinvite.dart';
import 'package:tennis_app/screens/giocatoreinvite.dart';
import 'package:tennis_app/utilities/constant/button_text_style.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/rating_star.dart';

class CoachProfile extends StatelessWidget {
  double value = 3.5;
  CoachProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.textfield_color,
        title: Text("Novak Djokovic"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSizedBox(
                height: height * 0.05,
              ),
              Container(
                width: 182,
                height: 182,
                child: Circle(radius: 50, images: ImagePath.loginlogo),
              ),
              CustomSizedBox(
                height: height * 0.04,
              ),
              Text(
                'Novak Djokovic',
                style: heading_text,
              ),
              CustomSizedBox(
                height: height * 0.015,
              ),
              Rating(),
              CustomSizedBox(
                height: height * 0.02,
              ),
              Text(
                'Coach',
                style: radio_text_color,
              ),
              CustomSizedBox(
                height: height * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Citta :   Milano',
                          style: radio_text_color,
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 27.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'FederAzione ranking: 2 ',
                            style: radio_text_color,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Mantiene la classifica',
                          style: hint_text,
                        ),
                      ],
                    ),
                    // CustomSizedBox(
                    //   height: height * 0.01,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 9.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Eta: 29',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 4,
              ),
              CustomButton(
                  width: width * 0.8,
                  height: height * 0.05,
                  text: 'Invita',
                  color: Appcolor.buttonnewcolor,
                  onpressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CoachInvite()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
