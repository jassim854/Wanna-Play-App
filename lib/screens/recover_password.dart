import 'package:flutter/material.dart';
import 'package:tennis_app/screens/login.dart';
import 'package:tennis_app/screens/new_password.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
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
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomSizedBox(
              height: height * 0.15,
            ),
            Circle(
              url:
                  'https://www.hdwallpaper.nu/wp-content/uploads/2015/08/rafael-nadal-beat-lucas-pouille-to-reach-third-round-in-monte-carlo-5.jpg',
            ),
            CustomSizedBox(
              height: height * 0.1,
            ),
            Text(
              "Recover Password",
              style: heading_text,
            ),
            CustomSizedBox(
              height: height * 0.7,
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
              height: height * 0.06,
              width: width * 0.7,
              text: "Confirm",
              onpressed: () {
                Navigator.of(context).push(
                    (MaterialPageRoute(builder: (context) => NewPassword())));
              },
            ),
          ],
        ),
      ),
    );
  }
}
