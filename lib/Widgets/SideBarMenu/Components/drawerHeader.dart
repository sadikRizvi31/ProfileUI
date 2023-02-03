import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class drawerHeader extends StatelessWidget {
  const drawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Material(
      elevation: 7.0,
      shadowColor: COLOR_INDIGO,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.18,
        child: DrawerHeader(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      profileImage,
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sunny Vaniya",style: themeData.textTheme.headline3,),
                    Text("Shop Owner/Admin",style: themeData.textTheme.bodyText1,),
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
}
