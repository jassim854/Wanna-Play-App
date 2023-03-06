// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';

class CustomRadioButton extends StatelessWidget {
  int val;
  int value;
  String text;
  TextStyle? style;
  Function(int?) onChanged;

  CustomRadioButton({
    Key? key,
    required this.val,
    required this.value,
    required this.text,
    required this.onChanged,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(value: value, groupValue: val, onChanged: onChanged),
        Text(
          text,
          style: style ?? radio_text_color,
        ),
      ],
    );
  }
}
