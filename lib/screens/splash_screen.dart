import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tennis_app/screens/welcome_screen.dart';
import 'package:tennis_app/utilities/constant/image_path.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 7),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(ImagePath.spalsh)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset(ImagePath.spalshicon)],
          ),
        ),
      ),
    );
  }
}
