// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';

class ChatTextField extends StatelessWidget {
  bool isplaying = false;
  void Function()? onpressed;
  ChatTextField({
    required this.isplaying,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Image.asset(ImagePath.emojiimg),
                  ),
                  suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: IconButton(
                        onPressed: onpressed,
                        icon: Image.asset(ImagePath.sendimg),
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 3, color: Colors.grey), //<-- SEE HERE
                  ),
                ),
              ),
            ),
          ),
          CustomSizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Visibility(
              visible: isplaying,
              child: CustomButton(
                  height: 70, width: 70, text: "dfd", onpressed: () {}))
        ],
      ),
    );
  }
}
