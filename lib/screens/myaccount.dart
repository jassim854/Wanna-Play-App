import 'package:flutter/material.dart';
import 'package:tennis_app/utilities/constant/button_text_style.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/radio_button_widgets.dart';
import 'package:tennis_app/widgets/textfield_widget.dart';

class MyAccount extends StatefulWidget {
  MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  int val = -1;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.textfield_color,
        title: Center(
            child: Text(
          "Il mio account",
          style: heading_text,
        )),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("Edit")],
              ),
            ),
            CustomSizedBox(
              height: height * 0.02,
            ),
            Circle(radius: 50, images: ImagePath.loginlogo),
            CustomSizedBox(
              height: height * 0.03,
            ),
            TextFields(
              height: height * 0.05,
              width: width * 0.8,
              text: 'Matteo Berrettini',
            ),
            CustomSizedBox(
              height: height * 0.03,
            ),
            TextFields(
              height: height * 0.05,
              width: width * 0.8,
              text: 'giocatore@wannaplay.it',
            ),
            CustomSizedBox(
              height: height * 0.03,
            ),
            TextFields(
              height: height * 0.05,
              width: width * 0.8,
              text: '*************',
            ),
            CustomSizedBox(
              height: height * 0.03,
            ),
            TextFields(
              height: height * 0.05,
              width: width * 0.8,
              text: '24/12/1995',
            ),
            CustomSizedBox(
              height: height * 0.03,
            ),
            TextFields(
              height: height * 0.05,
              width: width * 0.8,
              text: 'Milano',
            ),
            CustomSizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Row(
                children: [
                  Text(
                    "Seeso",
                    style: hint_text,
                  ),
                  CustomSizedBox(
                    width: width * 0.5,
                  ),
                  CustomRadioButton(
                      val: val,
                      value: 1,
                      text: 'M',
                      onChanged: ((value) {
                        setState(() {
                          val = value!;
                        });
                      })),
                  CustomRadioButton(
                      val: val,
                      value: 2,
                      text: 'F',
                      onChanged: ((value) {
                        setState(() {
                          val = value!;
                        });
                      }))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
