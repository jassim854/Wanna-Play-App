import 'package:flutter/material.dart';
import 'package:tennis_app/screens/chat_with_user.dart';
import 'package:tennis_app/screens/circolo_visitor.dart';
import 'package:tennis_app/screens/lesson_finite.dart';
import 'package:tennis_app/screens/login.dart';
import 'package:tennis_app/screens/match_finito.dart';

import 'package:tennis_app/screens/myprofile_gicatore.dart';
import 'package:tennis_app/screens/new_password.dart';
import 'package:tennis_app/screens/notification.dart';

import 'package:tennis_app/screens/recover_password.dart';
import 'package:tennis_app/screens/search_screen.dart';
import 'package:tennis_app/screens/select_character_screen.dart';
import 'package:tennis_app/screens/sign_up_classifica.dart';
import 'package:tennis_app/screens/sign_up_giocatore.dart';
import 'package:tennis_app/screens/splash_screen.dart';
import 'package:tennis_app/screens/tennisclub_recension_giocatore.dart';

import 'package:tennis_app/screens/welcome_screen.dart';

void main() {
  runApp(
    const HomePage(),
  
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}
