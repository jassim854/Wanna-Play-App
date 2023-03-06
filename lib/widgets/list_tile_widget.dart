// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';

class CustomListTile extends StatelessWidget {
  String text;
  Widget? icon;
  Widget? trailing;
  double? height;
  double? width;
  String? subtitles;
  TextStyle? style;
  void Function()? ontap;
  CustomListTile({
    Key? key,
    required this.text,
    this.icon,
    this.subtitles,
    this.height,
    this.trailing,
    this.style,
    this.width,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: height ?? MediaQuery.of(context).size.height,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 0.0),
            )
          ],
          color: Appcolor.listtilecolor,
          borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        title: Center(
          child: Text(
            text,
            style: textlisttile,
          ),
        ),
        onTap: ontap,
        leading: icon,
        trailing: trailing,
        subtitle: Text(subtitles ?? ""),
      ),
    );
  }
}
