import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class saveButton extends StatelessWidget {

  final String text;

  saveButton({required this.text});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.05,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: COLOR_INDIGO,
        ),
        onPressed: () {},
        child: Text(text,style: themeData.textTheme.headline4,),
      ),
    );
  }
}
