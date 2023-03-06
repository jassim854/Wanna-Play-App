import 'package:flutter/material.dart';
import 'package:tennis_app/screens/circolo_visitor.dart';
import 'package:tennis_app/screens/challenge_prenatato.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';

Future<Future> popupaccpet(context) async {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return showDialog(
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(17)),
          child: Center(
            child: Container(
              height: height * 0.4,
              child: AlertDialog(
                title: Text("Sei riuscito a prenotare?"),
                content: Column(
                  children: [
                    CustomButton(
                        height: height * 0.05,
                        width: width * 0.5,
                        text: "Si",
                        color: Appcolor.listtilecolor,
                        onpressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const Challengeprenatato()));
                        }),
                    CustomSizedBox(
                      height: height * 0.02,
                    ),
                    CustomButton(
                        height: height * 0.05,
                        width: width * 0.5,
                        text: "No",
                        color: Appcolor.NOcolor,
                        onpressed: () {}),
                    CustomSizedBox(
                      height: height * 0.02,
                    ),
                    CustomButton(
                        height: height * 0.07,
                        width: width * 0.5,
                        text: "Condividi \n Prenotazione",
                        color: Appcolor.buttonnewcolor,
                        onpressed: () {}),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      context: context);
}
