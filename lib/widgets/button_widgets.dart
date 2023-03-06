// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';

import '../utilities/constant/button_text_style.dart';

class CustomButton extends StatelessWidget {
  String text;
  double? height;
  double? width;
  TextStyle? style;
  Color? color;
  String? imgpath;
  void Function()? onpressed;
  CustomButton({
    Key? key,
    required this.text,
    this.height,
    this.width,
    this.style,
    this.color,
    this.imgpath,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: height ?? MediaQuery.of(context).size.height,
        width: width ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: color ?? Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: style ?? btn_login_text,
            ),
            CustomSizedBox(
              width: width! * 0.06,
            ),
            imgpath == null ? const SizedBox() : Image.asset(imgpath!),
          ],
        ),
      ),
    );
  }
}
