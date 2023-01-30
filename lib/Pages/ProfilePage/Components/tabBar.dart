import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class tabBar extends StatelessWidget {
  const tabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(5),
      width: width * 0.90,
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(8),

      ),
      child: TabBar(
          labelColor: COLOR_WHITE,
          unselectedLabelColor: COLOR_DARKGREY,
          indicator: BoxDecoration(
            color: COLOR_INDIGO, borderRadius: BorderRadius.circular(8),
          ),
          tabs: [
            Tab(
              child: Text(
                "Overview",
                style: TextStyle( fontFamily: 'Montserrat',fontWeight: FontWeight.w800,fontSize: 14,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Account Settings",
                style: TextStyle( fontFamily: 'Montserrat',fontWeight: FontWeight.w800,fontSize: 14,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Change Password",
                style: TextStyle( fontFamily: 'Montserrat',fontWeight: FontWeight.w800,fontSize: 14,
                ),
              ),
            ),
          ]),
    );
  }
}
