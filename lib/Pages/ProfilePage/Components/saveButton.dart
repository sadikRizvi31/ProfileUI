import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class saveButton extends StatelessWidget {
  const saveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.05,
      width: double.infinity,
      child: ElevatedButton(
        child: Text("Save",style: themeData.textTheme.headline4,),
        style: ElevatedButton.styleFrom(
          primary: COLOR_INDIGO,
        ),
        onPressed: () {},
      ),
    );
  }
}
