// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tennis_app/utilities/constant/button_text_style.dart';
import 'package:tennis_app/utilities/constant/colors.dart';

class TextFields extends StatelessWidget {
  String text;
  double? height;
  double? width;
  Widget? suffixicon;
  TextStyle? textStyle;
  TextAlign? textAligns;
  TextFields({
    Key? key,
    required this.text,
    this.height,
    this.width,
    this.textStyle,
    this.suffixicon,
    this.textAligns,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: height ?? MediaQuery.of(context).size.height,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Appcolor.textfield_color,
          borderRadius: BorderRadius.circular(13)),
      child: TextField(
      
        style: textStyle,
        textAlign: textAligns ?? TextAlign.start,
        decoration: InputDecoration(
            suffixIcon: suffixicon,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: text,
            hintStyle: hint_text),
      ),
    );
  }
}
