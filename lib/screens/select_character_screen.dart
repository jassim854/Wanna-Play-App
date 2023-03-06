import 'package:flutter/material.dart';
import 'package:tennis_app/screens/sign_up_classifica.dart';
import 'package:tennis_app/screens/sign_up_giocatore.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/radio_button_widgets.dart';

import '../widgets/circle_widget.dart';

class SelectCharacter extends StatefulWidget {
  const SelectCharacter({super.key});

  @override
  State<SelectCharacter> createState() => _SelectCharacterState();
}

class _SelectCharacterState extends State<SelectCharacter> {
  int val = -1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            CustomSizedBox(
              height: height * 0.16,
            ),
            Circle(
              url:
                  'https://media.gettyimages.com/photos/monaco-monaco-spanish-player-rafael-nadal-returns-the-ball-to-french-picture-id52614634?s=612x612',
            ),
            CustomSizedBox(
              height: height * 0.05,
            ),
            Text(
              "Welcome",
              style: heading_text,
            ),
            CustomSizedBox(
              height: height * 0.6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 83),
              child: CustomRadioButton(
                  val: val,
                  value: 1,
                  text: 'Giocatore',
                  onChanged: (value) {
                    setState(() {
                      val = value!;
                      Navigator.of(context).push((MaterialPageRoute(
                          builder: (context) => SignUpGiocatore())));
                    });
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 83),
              child: CustomRadioButton(
                  val: val,
                  value: 2,
                  text: 'Coach',
                  onChanged: (value) {
                    setState(() {
                      val = value!;
                       Navigator.of(context).push((MaterialPageRoute(
                          builder: (context) => SignUpClassifica())));
                    });
                  }),
            ),
            CustomSizedBox(
              height: height * 0.05,
            ),
            CustomButton(
              height: height * 0.06,
              width: width * 0.8,
              text: "Login",
              onpressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
