import 'package:flutter/material.dart';
import 'package:tennis_app/utilities/constant/colors.dart';
import 'package:tennis_app/utilities/constant/heading_text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolor.textfield_color,
        title: Center(
            child: Text(
          "Blog ultime news",
          style: heading_text,
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 32),
        child: Container(
          child: Column(
            children: [
              ListTile(
                title: Text("Ubitennis Blog"),
                subtitle: Text("https://www.ubitennis.it"),
                onTap: () {
                  _launchUrl("https://chat.openai.com/auth/login?next=/chat");
                },
              ),
              const Divider(
                height: 9,
                thickness: 5,
                color: Colors.black,
              ),
              ListTile(
                title: Text("Solo Tennis"),
                subtitle: Text("https://www.solotennis.it"),
                onTap: () {
                  _launchUrl("https://www.solotennis.it");
                },
              ),
              const Divider(
                height: 9,
                thickness: 5,
                color: Colors.black,
              ),
              ListTile(
                title: Text("Tennisite"),
                subtitle: Text("https://www.tennisite.it"),
                onTap: () {
                  _launchUrl("https://www.tennisite.it");
                },
              ),
              const Divider(
                height: 9,
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

Future<void> _launchUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
