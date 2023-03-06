import 'package:flutter/material.dart';
import 'package:tennis_app/screens/login.dart';
import 'package:tennis_app/screens/select_character_screen.dart';
import 'package:tennis_app/screens/sign_up_giocatore.dart';
import 'package:tennis_app/utilities/constant/button_text_style.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
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
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(ImagePath.spalsh)),
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSizedBox(
                height: height * 0.9,
              ),
              Image.asset(ImagePath.spalshicon),
              CustomSizedBox(
                height: height * 0.04,
              ),
              CustomButton(
                height: height * 0.06,
                width: width * 0.8,
                text: "Sign up",
                onpressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SelectCharacter()));
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
