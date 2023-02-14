import 'dart:async';

import 'package:flutter/material.dart';
import 'package:praticing_ui/Utils/constants.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: COLOR_WHITE,
      child: Center(
        child: Image(image: AssetImage("assets/images/img.png")),
      ),
    );
  }
}
