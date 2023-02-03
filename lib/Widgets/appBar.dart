import 'package:flutter/material.dart';

import '../Utils/constants.dart';

class appBar extends StatelessWidget with PreferredSizeWidget {

  final IconData leading;
  final IconData? trailing;
  final String title;

  appBar({required this.leading,this.trailing,required this.title});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return AppBar(
      centerTitle: true,
      backgroundColor: COLOR_WHITE,
      elevation: 3.0,
      title: Text(title,style: themeData.textTheme.headline2,textAlign: TextAlign.center),
      leading: IconButton(
        icon: Icon(
          leading,
          color: COLOR_DARKGREY,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(trailing != null ? trailing : null),tooltip: 'search icon',color: COLOR_INDIGO,),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
