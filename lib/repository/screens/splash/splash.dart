import 'dart:async';

import 'package:blinkit_app/domain/constans/appcolor.dart';
import 'package:blinkit_app/repository/login/loginscreen.dart';
import 'package:blinkit_app/repository/widget/uihelper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7CB45),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UIHelper.customImage(img: "image 1.png")
        ],
      ),
    );
  }
}
