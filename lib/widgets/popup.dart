import 'package:flutter/material.dart';
import 'package:tennis_app/screens/login.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/widgets/button_widgets.dart';
import 'package:tennis_app/widgets/radio_button_widgets.dart';

Future<Future> popup(context, titletext, text, val, value, onChanged) async {
  return showDialog(
    builder: (BuildContext context) {
      final height = MediaQuery.of(context).size.height;
      final width = MediaQuery.of(context).size.width;
      return AlertDialog(
        title: const Text("Classifica con cui puoi sfidarti"),
        content: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(titletext),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '4.nc',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '4.6',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '4.5',
                        onChanged: onChanged),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '4.4',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '4.3',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '4.2',
                        onChanged: onChanged),
                  ],
                ),
                Row(
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '4.1',
                        onChanged: onChanged),
                  ],
                ),
                const Text('Categorie 3'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '3.5',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '3.4',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '3.3',
                        onChanged: onChanged),
                  ],
                ),
                Row(
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '3.2',
                        onChanged: onChanged),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: CustomRadioButton(
                          val: val,
                          value: value,
                          text: '3.1',
                          onChanged: onChanged),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text('Categorie 2'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '2.8',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '2.7',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '2.6',
                        onChanged: onChanged),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '2.5',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '2.4',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '2.3',
                        onChanged: onChanged),
                  ],
                ),
                Row(
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '2.2',
                        onChanged: onChanged),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: CustomRadioButton(
                          val: val,
                          value: value,
                          text: '2.1',
                          onChanged: onChanged),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const Text('Categorie 1'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.20',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.19',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.18',
                        onChanged: onChanged),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.17',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.16',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.15',
                        onChanged: onChanged),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.14',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.13',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.12',
                        onChanged: onChanged),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.11',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.10',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.9',
                        onChanged: onChanged),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.8',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.7',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.6',
                        onChanged: onChanged),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.5',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.4',
                        onChanged: onChanged),
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.3',
                        onChanged: onChanged),
                  ],
                ),
                Row(
                  children: [
                    CustomRadioButton(
                        val: val,
                        value: value,
                        text: '1.2',
                        onChanged: onChanged),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: CustomRadioButton(
                          val: val,
                          value: value,
                          text: '1.1',
                          onChanged: onChanged),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                CustomButton(
                    color: Appcolor.buttonnewcolor,
                    height: height * 0.06,
                    width: width * 0.8,
                    text: 'Salva',
                    onpressed: () {
                      Navigator.of(context).push(
                          (MaterialPageRoute(builder: (context) => Login())));
                    }),
                SizedBox(
                  height: height * 0.1,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Chiudi',
                      style: privacy_color,
                    ))
              ],
            ),
          ),
        ),
      );
    },
    context: context,
  );
}
