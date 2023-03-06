import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:tennis_app/screens/accept_invite_notification.dart';
import 'package:tennis_app/screens/chat_screen.dart';
import 'package:tennis_app/screens/lezioni.dart';
import 'package:tennis_app/screens/news.dart';
import 'package:tennis_app/screens/notification.dart';
import 'package:tennis_app/screens/prenotazioni.dart';
import 'package:tennis_app/screens/search_screen.dart';
import 'package:tennis_app/screens/settingscreen.dart';
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
        backgroundColor: Appcolor.textfield_color,
        title: Center(
            child: Text(
          'Home',
          style: heading_text,
        )),
        // leading: Image.asset(ImagePath.facebookicon),
        // actions: [
        //   GestureDetector(
        //       onTap: () => Navigator.of(context).push(
        //           MaterialPageRoute(builder: (context) => Notifications())),
        //       child: Image.asset(ImagePath.notificationicon)),
        //   Image.asset(ImagePath.chaticon)
        // ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Circle(radius: 50, images: ImagePath.loginlogo),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Matteo Berrettini",
                        style: heading_text,
                      ),
                      // RatingStars(
                      //   value: value,
                      //   starColor: Appcolor.starcolor,
                      //   onValueChanged: (valu) {
                      //     setState(() {
                      //       value = valu;
                      //     });
                      //   },
                      // ),
                      Text(
                        "Categoria 1.5",
                        style: textc,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Textformfield(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Search',
                suffixicon: const Icon(Icons.search),
                ontap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
              ),
              SizedBox(
                height: height * 0.04,
              ),
              CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Prenotazioni',
                ontap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => Prenotazioni())));
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Gioca',
                ontap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => SearchScreen())));
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Trova un coach',
                ontap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => SearchScreen())));
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Lezioni',
                ontap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => Lezioni())));
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Inviti ricevuti',
                ontap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => AcceptInvite())));
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Notifiche ',
                ontap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => Notifications())));
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Le mie Chat',
                ontap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => ChatScreen())));
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Le ultime news ',
                ontap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) => News())));
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CustomListTile(
                height: height * 0.06,
                width: width * 0.8,
                text: 'Settings',
                ontap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => Settings())));
                },
              ),
              SizedBox(
                height: height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
