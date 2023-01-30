import 'package:flutter/material.dart';

import '../Utils/constants.dart';

class appBar extends StatelessWidget with PreferredSizeWidget {
  const appBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return AppBar(
      centerTitle: true,
      backgroundColor: COLOR_WHITE,
      elevation: 3.0,
      title: Text("My Profile",style: themeData.textTheme.headline2,textAlign: TextAlign.center),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: COLOR_DARKGREY,
        ),
        onPressed: () {},
      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
