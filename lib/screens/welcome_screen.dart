import 'package:flutter/material.dart';
import 'package:tennis_app/screens/select_character_screen.dart';
import 'package:tennis_app/screens/sign_up_giocatore.dart';
import 'package:tennis_app/utilities/constant/button_text_style.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';

import '../widgets/button_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomSizedBox(
              height: height * 0.16,
            ),
            Circle(
              url:
                  'https://www.hdwallpaper.nu/wp-content/uploads/2015/08/rafael-nadal-beat-lucas-pouille-to-reach-third-round-in-monte-carlo-5.jpg',
            ),
            CustomSizedBox(
              height: height * 0.05,
            ),
            Text(
              "Welcome",
              style: heading_text,
            ),
            CustomSizedBox(
              height: height * 0.22,
            ),
            CustomButton(
              height: height * 0.06,
              width: width * 0.8,
              text: "Sign up",
              onpressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignUpGiocatore()));
              },
            ),
            CustomSizedBox(
              height: height * 0.05,
            ),
            CustomButton(
              height: height * 0.06,
              width: width * 0.8,
              text: "Login",
              onpressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SelectCharacter()));
              },
            )
          ],
        ),
      ),
    );
  }
}
