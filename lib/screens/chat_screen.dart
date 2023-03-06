import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tennis_app/screens/chat_with_user.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';
import 'package:tennis_app/widgets/chat_textfield._widget.dart';
import 'package:tennis_app/widgets/circle_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.textfield_color,
        title: Center(
          child: Text(
            "Chat",
            style: heading_text,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 39.0),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => Chatwithuser(
                            text: 'Rafael Nadal',
                          ))));
                },
                leading: Circle(radius: 30, images: ImagePath.rafaellogo),
                title: const Text("Rafael Nadal"),
                subtitle: const Text("Send a Message"),
              ),
              const Divider(
                height: 27,
                thickness: 5,
                color: Colors.black,
              ),
              ListTile(
                onTap: () {
                  ChatTextField(
                    isplaying: false,
                    onpressed: () {},
                  );
                },
                leading: Circle(radius: 50, images: ImagePath.coachlogo),
                title: const Text("Marcus Geo"),
                subtitle: const Text("Send a Message"),
              ),
              const Divider(
                height: 27,
                thickness: 5,
                color: Colors.black,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => Chatwithuser(
                            text: 'Roger Federer',
                          ))));
                },
                leading: Circle(radius: 50, images: ImagePath.rafaelchat),
                title: const Text("Roger Federer"),
                subtitle: const Text("Send a Message"),
              ),
              const Divider(
                height: 27,
                thickness: 5,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
