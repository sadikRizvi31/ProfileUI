import 'package:flutter/material.dart';
import 'package:praticing_ui/Utils/constants.dart';

import 'Pages/ProfilePage/ProfilePage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: COLOR_INDIGO,accentColor: COLOR_WHITE, textTheme: TEXT_THEME_DEFAULT,fontFamily: 'Montserrat'),
      home: ProfilePage(),
    );
  }
}
