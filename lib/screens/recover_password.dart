import 'package:flutter/material.dart';
import 'package:tennis_app/screens/login.dart';
import 'package:tennis_app/screens/new_password.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/textfield_widget.dart';

class RecoverPassword extends StatelessWidget {
  const RecoverPassword({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSizedBox(
                height: height * 5,
              ),
              Image.asset(ImagePath.spalshicon),
              CustomSizedBox(
                height: height * 0.02,
              ),
              Text(
                "Recover Password",
                style: heading_text,
              ),
              CustomSizedBox(
                height: height * 0.2,
              ),
              TextFields(
                height: height * 0.06,
                width: width * 0.7,
                text: 'Email',
              ),
              CustomSizedBox(
                height: height * 0.04,
              ),
              CustomButton(
                color: Appcolor.buttonnewcolor,
                height: height * 0.05,
                width: width * 0.8,
                text: "Confirm",
                onpressed: () {
                  Navigator.of(context).push(
                      (MaterialPageRoute(builder: (context) => NewPassword())));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
