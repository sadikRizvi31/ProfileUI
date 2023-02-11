import 'package:flutter/material.dart';
import 'package:praticing_ui/Widgets/appBar.dart';

class aboutUs_TC extends StatelessWidget {

  final String text;
  final String title;

  aboutUs_TC({required this.title,required this.text});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: appBar(leading: Icons.arrow_back_ios,title: title,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(4.0),
          child: Text(text,style: themeData.textTheme.bodyText2,maxLines: 500,),
        ),
      ),
    );
  }
}