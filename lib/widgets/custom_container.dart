// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';

import 'circle_widget.dart';

class ContainerListTile extends StatelessWidget {
  String urls;
  String titletext;
  String subtitle;
  String? level = "";
  void Function()? ontap;
  String characterselect;

  ContainerListTile({
    Key? key,
    required this.urls,
    required this.titletext,
    required this.subtitle,
    this.level,
    required this.ontap,
    required this.characterselect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: height * 0.1,
        width: width * 0.2,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 17),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Circle(
              url: urls,
              height: 50,
              width: 50,
            ),
            CustomSizedBox(
              width: width * 0.05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titletext,
                  style: searchtitle,
                ),
                Text(
                  subtitle,
                  style: searchsubtitles,
                ),
                const RatingStars(
                  starColor: Appcolor.starcolor,
                )
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  level!,
                ),
                CustomSizedBox(
                  height: height * 0.02,
                ),
                Text(
                  characterselect,
                  style: searchsubtitles,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
