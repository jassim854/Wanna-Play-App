import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tennis_app/screens/accept_invite_notification.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/widgets/circle_widget.dart';
import 'package:tennis_app/widgets/custom_sized_box_widget.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: heading_text,
        ),
      ),
      body: Column(
        children: [
          CustomSizedBox(
            height: height * 0.04,
          ),
          ListTile(
            leading: Circle(
              url: '',
              height: 50,
              width: 50,
            ),
            trailing: TextButton(
                onPressed: () {},
                child: Text(
                  "Chat",
                  style: notificationtrailingcolor,
                )),
            title: Text(
              'Rafael Nadal has accepted your invitation',
              style: notificationtitlecolor,
            ),
            subtitle: Text(
              'You can now chat to plan a match',
              style: notificationsubtitlecolor,
            ),
          ),
          ListTile(
            leading: Circle(
              url: '',
              height: 50,
              width: 50,
            ),
            trailing: TextButton(
                onPressed: () {

                  Navigator.of(context).push(MaterialPageRoute(builder: ((context) => AcceptInvite())));
                },
                child: Text("Details", style: notificationtrailingcolor)),
            title: Text(
              'Roger Federer invited you',
              style: notificationtitlecolor,
            ),
            subtitle: Text(
              'Visit profile and accept to match',
              style: notificationsubtitlecolor,
            ),
          ),
          ListTile(
            leading: Circle(
              url: '',
              height: 50,
              width: 50,
            ),
            trailing: TextButton(
                onPressed: () {},
                child: Text("Chat", style: notificationtrailingcolor)),
            title: Text(
              'Novak Djokovic has accepted your invitation',
              style: notificationtitlecolor,
            ),
            subtitle: Text(
              'You can now chat to plan a lesson',
              style: notificationsubtitlecolor,
            ),
          ),
          ListTile(
            leading: Circle(
              url: '',
              height: 50,
              width: 50,
            ),
            trailing: TextButton(
                onPressed: () {},
                child: Text("Edit", style: notificationtrailingcolor)),
            title: Text(
              'Draft Match',
              style: notificationtitlecolor,
            ),
            subtitle: Text(
              'Add match detail',
              style: notificationsubtitlecolor,
            ),
          ),
          ListTile(
            leading: Circle(
              url: '',
              height: 50,
              width: 50,
            ),
            trailing: TextButton(
                onPressed: () {},
                child: Text("Edit", style: notificationtrailingcolor)),
            title: Text(
              'You Vs Nadal',
              style: notificationtitlecolor,
            ),
            subtitle: Text(
              'Add match detail',
              style: notificationsubtitlecolor,
            ),
          ),
          ListTile(
            leading: Circle(
              url: '',
              height: 50,
              width: 50,
            ),
            trailing: TextButton(
                onPressed: () {},
                child: Text("Edit", style: notificationtrailingcolor)),
            title: Text(
              'Lesson with Djokovic',
              style: notificationtitlecolor,
            ),
            subtitle: Text(
              'Add lesson detail',
              style: notificationsubtitlecolor,
            ),
          )
        ],
      ),
    );
  }
}
