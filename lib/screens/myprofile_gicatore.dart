import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:tennis_app/screens/notification.dart';
import 'package:tennis_app/screens/search_screen.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';
import 'package:tennis_app/widgets/list_tile_widget.dart';
import 'package:tennis_app/widgets/textfield_widget.dart';
import 'package:tennis_app/widgets/textformfield.dart';

class ProfileGecatore extends StatefulWidget {
  const ProfileGecatore({super.key});

  @override
  State<ProfileGecatore> createState() => _ProfileGecatoreState();
}

class _ProfileGecatoreState extends State<ProfileGecatore> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Appcolor.appbarcolour,
        title: Center(
            child: Text(
          'Home',
          style: heading_text,
        )),
        leading: Image.asset(ImagePath.facebookicon),
        actions: [
          GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Notifications())),
              child: Image.asset(ImagePath.notificationicon)),
          Image.asset(ImagePath.chaticon)
        ],
      ),
      body: Container(
        child: Column(
          children: [
            CustomSizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Circle(
                    width: 99,
                    height: 99,
                    url:
                        'https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1487x614:1489x612)/origin-imgresizer.eurosport.com/2017/10/12/2185124-45659830-2560-1440.jpg'),
                CustomSizedBox(
                  width: width * 0.02,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Matteo Berrettini",
                      style: heading_text,
                    ),
                    RatingStars(
                      value: value,
                      starColor: Appcolor.starcolor,
                      onValueChanged: (valu) {
                        setState(() {
                          value = valu;
                        });
                      },
                    ),
                    Text(
                      "Level D7",
                      style: textc,
                    )
                  ],
                )
              ],
            ),
            CustomSizedBox(
              height: height * 0.02,
            ),
            Textformfield(
              height: height * 0.06,
              width: width * 0.7,
              text: 'Search',
              suffixicon: const Icon(Icons.search),
              ontap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
            ),
            CustomSizedBox(
              height: height * 0.06,
            ),
            CustomListTile(
              height: height * 0.08,
              width: width * 0.7,
              text: 'Le mie prenotazioni',
              subtitles: '27.12.2022  Ora: 20:00',
              icon: Image.asset(ImagePath.hockeyicon),
              trailing: Image.asset(ImagePath.forwardicon),
              ontap: () {},
            ),
            CustomSizedBox(
              height: height * 0.04,
            ),
            CustomListTile(
              height: height * 0.08,
              width: width * 0.7,
              text: 'Gioca',
              icon: Image.asset(ImagePath.footballicon),
              trailing: Image.asset(ImagePath.forwardicon),
              ontap: () {},
            ),
            CustomSizedBox(
              height: height * 0.04,
            ),
            CustomListTile(
              height: height * 0.08,
              width: width * 0.7,
              text: 'Trova un coach',
              icon: Image.asset(ImagePath.timericon),
              trailing: Image.asset(ImagePath.forwardicon),
              ontap: () {},
            ),
            CustomSizedBox(
              height: height * 0.04,
            ),
            CustomListTile(
              height: height * 0.08,
              width: width * 0.7,
              text: 'Le mie lezioni',
              icon: Image.asset(ImagePath.timericon),
              trailing: Image.asset(ImagePath.forwardicon),
              ontap: () {},
            ),
            CustomSizedBox(
              height: height * 0.04,
            ),
            CustomListTile(
              height: height * 0.08,
              width: width * 0.7,
              text: 'Inviti ricevuti',
              icon: Image.asset(ImagePath.oppicon),
              trailing: Image.asset(ImagePath.forwardicon),
              ontap: () {},
            ),
            CustomSizedBox(
              height: height * 0.04,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: height * 0.13,
              width: width * 0.7,
              decoration: BoxDecoration(
                  color: Appcolor.textfield_color,
                  borderRadius: BorderRadius.circular(14)),
              child: Image.asset(
                ImagePath.imageicon,
                fit: BoxFit.fill,
              ),
            ),
            CustomSizedBox(
              height: height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
