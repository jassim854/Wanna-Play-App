import 'package:flutter/material.dart';
import 'package:tennis_app/screens/login.dart';
import 'package:tennis_app/screens/sign_up_classifica.dart';
import 'package:tennis_app/screens/sign_up_giocatore.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
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
  int value = 1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(ImagePath.spalsh)),
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              CustomSizedBox(
                height: height * 0.9,
              ),
              Image.asset(ImagePath.spalshicon),
              CustomSizedBox(
                height: height * 0.08,
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
                      });
                    }),
              ),
              CustomSizedBox(
                height: height * 0.05,
              ),
              CustomButton(
                height: height * 0.06,
                width: width * 0.8,
                text: "Next",
                onpressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignUpGiocatore()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
