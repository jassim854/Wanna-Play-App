
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tennis_app/screens/login.dart';
import 'package:tennis_app/screens/myaccount.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/list_tile_widget.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.textfield_color,
        title: Center(
            child: Text(
          " Settings",
          style: heading_text,
        )),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Il mio account',
                ontap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyAccount()));
                }),
            CustomSizedBox(
              height: height * 0.03,
            ),
            CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Privacy e sicurezza',
                ontap: () {}),
            CustomSizedBox(
              height: height * 0.03,
            ),
            CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Aiuto',
                ontap: () {}),
            CustomSizedBox(
              height: height * 0.03,
            ),
            CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: ' Log-out',
                ontap: () {
                       Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Login()));
                }),
            
          ],
        ),
      ),
    );
  }
}
