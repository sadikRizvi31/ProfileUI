import 'package:flutter/material.dart';

import 'package:praticing_ui/Pages/ProfilePage/Components/tabBarAccountContainer.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/tabBarChangePasswordContainer.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/tabBarOverviewContainer.dart';


class tabBarItems extends StatelessWidget {

  final double height;
  final double width;

  tabBarItems({required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.33,
      width: width * 0.90,
      child: const TabBarView(
        children: [
          tabBarContainer(),
          tabBarAccountContainer(),
          tabBarChangePasswordContainer(),
        ],
      ),
    );
  }
}
