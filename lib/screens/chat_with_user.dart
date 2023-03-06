// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/chat_textfield._widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';

class Chatwithuser extends StatefulWidget {
  String? text;
  Chatwithuser({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  State<Chatwithuser> createState() => _ChatwithuserState();
}

class _ChatwithuserState extends State<Chatwithuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.textfield_color,
        title: Text(
          widget.text ?? "Nadal",
          style: heading_text,
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ChatTextField(
              isplaying: false,
              onpressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
