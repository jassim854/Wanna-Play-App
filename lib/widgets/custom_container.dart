// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';

import 'circle_widget.dart';

class ContainerListTile extends StatefulWidget {
  String titletext;
  String subtitle;
  String? level;
  String imagee;
  void Function()? ontap;
  String characterselect;

  ContainerListTile({
    Key? key,
    required this.titletext,
    required this.subtitle,
    this.level,
    required this.imagee,
    required this.ontap,
    required this.characterselect,
  }) : super(key: key);

  @override
  State<ContainerListTile> createState() => _ContainerListTileState();
}

class _ContainerListTileState extends State<ContainerListTile> {
  double value = 3.5;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        height: height * 0.1,
        width: width * 0.2,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 17),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Circle(radius: 30, images: widget.imagee),
            CustomSizedBox(
              width: width * 0.05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.titletext,
                  style: searchtitle,
                ),
                Text(
                  widget.subtitle,
                  style: searchsubtitles,
                ),
                RatingStars(
                  starColor: Appcolor.starcolor,
                  value: value,
                  onValueChanged: (valu) {
                    setState(() {
                      value = valu;
                    });
                  },
                ) 
              ],
            ),
            Spacer(),
            Expanded(
              flex: 35,
              child: Column(
                children: [
                  widget.level == null
                      ? SizedBox()
                      : Text(
                          widget.level!,
                        ),
                  CustomSizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    widget.characterselect,
                    style: searchsubtitles,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
