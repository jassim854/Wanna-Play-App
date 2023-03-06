import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:tennis_app/screens/login.dart';
import 'package:tennis_app/screens/myprofile_gicatore.dart';
import 'package:tennis_app/screens/new_password.dart';
import 'package:tennis_app/screens/notification.dart';
import 'package:tennis_app/screens/recover_password.dart';
import 'package:tennis_app/screens/search_screen.dart';
import 'package:tennis_app/screens/select_character_screen.dart';
import 'package:tennis_app/screens/sign_up_classifica.dart';
import 'package:tennis_app/screens/sign_up_giocatore.dart';
import 'package:tennis_app/screens/welcome_screen.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    tools: const [
      ...DevicePreview.defaultTools,
    ],
    builder: (context) => const HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfileGecatore(),
    );
  }
}
