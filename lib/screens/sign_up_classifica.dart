import 'package:flutter/material.dart';
import 'package:tennis_app/screens/sign_up_pop.dart';
import 'package:tennis_app/utilities/constant/button_text_style.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/radio_button_widgets.dart';
import 'package:tennis_app/widgets/textfield_widget.dart';

class SignUpClassifica extends StatefulWidget {
  const SignUpClassifica({super.key});

  @override
  State<SignUpClassifica> createState() => _SignUpClassificaState();
}

class _SignUpClassificaState extends State<SignUpClassifica> {
  int val = -1;
  int pop1 = -1;
  int values = -1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 88,
              ),
         Circle(radius: 50, images: ImagePath.loginlogo),
              const SizedBox(
                height: 27,
              ),
              Text(
                "Signup",
                style: heading_text,
              ),
              const SizedBox(
                height: 105,
              ),
              TextFields(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Nome Cognome',
              ),
              const SizedBox(
                height: 19,
              ),
              TextFields(
                  height: height * 0.06, width: width * 0.8, text: 'Email'),
              const SizedBox(
                height: 19,
              ),
              TextFields(
                  height: height * 0.06,
                  width: width * 0.8,
                  text: 'Compleanno'),
              const SizedBox(
                height: 19,
              ),
              TextFields(
                  height: height * 0.06, width: width * 0.8, text: 'Citta'),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sesso", style: text_color),
                  CustomSizedBox(
                    width: width * 0.3,
                  ),
                  CustomRadioButton(
                      val: val,
                      value: 1,
                      text: 'M',
                      onChanged: (value) {
                        setState(() {
                          val = value!;
                        });
                      }),
                  CustomRadioButton(
                      val: val,
                      value: 2,
                      text: 'S',
                      onChanged: (value) {
                        setState(() {
                          val = value!;
                        });
                      }),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mantieni la classifica", style: text_color),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  CustomRadioButton(
                      val: values,
                      value: 1,
                      text: 'Si',
                      onChanged: (value) {
                        setState(() {
                          values = value!;
                        });
                      }),
                  CustomRadioButton(
                      val: values,
                      value: 2,
                      text: 'No',
                      onChanged: (value) {
                        setState(() {
                          values = value!;
                        });
                      }),
                ],
              ),
              const SizedBox(
                height: 61,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ranking selezionato", style: text_color),
                  CustomSizedBox(
                    width: width * 0.25,
                  ),
                  Text(
                    "1.5",
                    style: tests_color,
                  )
                ],
              ),
              const SizedBox(
                height: 39,
              ),
              Text(
                'Privacy Policy ',
                style: newtextcolour,
              ),
              const SizedBox(
                height: 13,
              ),
              const SizedBox(
                height: 53,
              ),
              CustomButton(
                  color: Appcolor.buttonnewcolor,
                  height: height * 0.06,
                  width: width * 0.8,
                  text: 'Registrati',
                  onpressed: () {
                    popup(context, 'Categorie 4', 'name', pop1, 1, (value) {
                      setState(() {
                        pop1 = value;
                      });
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
