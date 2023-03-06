import 'package:flutter/material.dart';
import 'package:tennis_app/screens/myprofile_gicatore.dart';
import 'package:tennis_app/screens/recover_password.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/textfield_widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              height: height * 0.04,
            ),
            Text(
              "Welcome",
              style: heading_text,
            ),
            CustomSizedBox(
              height: height * 0.4,
            ),
            TextFields(
              height: height * 0.06,
              width: width * 0.7,
              text: 'Email',
            ),
            CustomSizedBox(
              height: height * 0.03,
            ),
            TextFields(
              height: height * 0.06,
              width: width * 0.7,
              text: 'Password',
            ),
            CustomSizedBox(
              height: height * 0.4,
            ),
            const Text(
              'or',
            ),
            CustomSizedBox(
              height: height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset('assetss/facebook.png')),
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset('assetss/insta.png')),
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset('assetss/google.png'))
              ],
            ),
            CustomSizedBox(
              height: height * 0.1,
            ),
            CustomButton(
              height: height * 0.06,
              width: width * 0.8,
              text: "Login",
              onpressed: () {
                Navigator.of(context).push((MaterialPageRoute(
                    builder: (context) => ProfileGecatore())));
              },
            ),
            CustomSizedBox(
              height: height * 0.03,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push((MaterialPageRoute(
                      builder: (context) => RecoverPassword())));
                },
                child: const Text('Forget Password?'))
          ],
        ),
      ),
    );
  }
}
