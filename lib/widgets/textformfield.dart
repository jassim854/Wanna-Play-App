// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tennis_app/utilities/constant/button_text_style.dart';
import 'package:tennis_app/utilities/constant/colors.dart';

class Textformfield extends StatelessWidget {
  String text;
  double? height;
  double? width;
  void Function()? ontap;
  Widget? suffixicon;
  Textformfield({
    Key? key,
    required this.text,
    this.ontap,
    this.height,
    this.width,
    this.suffixicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: height ?? MediaQuery.of(context).size.height,
      width: width ?? MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Appcolor.textfield_color,
          borderRadius: BorderRadius.circular(13)),
      child: TextFormField(
        onTap: ontap,
        readOnly: true,
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
