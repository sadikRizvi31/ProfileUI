import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class textInput extends StatelessWidget {

  final IconData icon;
  final String hintText;

  textInput({required this.icon,required this.hintText});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: COLOR_GREY,
          ),
          padding: const EdgeInsets.all(5),
          child: Icon(icon,size: 25,color: COLOR_INDIGO,),
        ),
        SizedBox(width: 7.0,),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: COLOR_GREY,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: TextField(
              decoration: new InputDecoration.collapsed(
                hintText: hintText,
                hintStyle: themeData.textTheme.headline4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
