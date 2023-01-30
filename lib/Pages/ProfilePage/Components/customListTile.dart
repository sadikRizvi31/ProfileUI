import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class customListTile extends StatelessWidget {

  final IconData leading;
  final String title;
  final String name;
  final IconData? trailing;

  customListTile({required this.leading,required this.title, required this.name,this.trailing});


  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return ListTile(
      visualDensity: VisualDensity(vertical: -4),
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: COLOR_GREY,
        ),
        padding: EdgeInsets.all(5),
        child: Icon(leading,size: 25,color: COLOR_INDIGO,),
      ),
      title: Text(title,style: themeData.textTheme.subtitle1,),
      subtitle: Text(name,style: themeData.textTheme.headline5,),
      trailing: Icon(trailing != null ? trailing : null,size: 25,color: COLOR_INDIGO,),
    );
  }
}
