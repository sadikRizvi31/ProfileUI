import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';
import '../../../Widgets/appBar.dart';
import '../../ProfilePage/Components/CircularImage.dart';
import '../../ProfilePage/Components/customListTile.dart';

class viewSingleItem extends StatelessWidget {
  const viewSingleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(leading: Icons.arrow_back_ios,title: 'Staff Details',),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: COLOR_OFFWHITE,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10.0,),
            CircularImage(),
            SizedBox(height: 10.0,),
            Container(
              color: COLOR_WHITE,
              padding: EdgeInsets.all(5.0),
              width: double.infinity,
              child: Column(
                children: [
                  customListTile(leading: Icons.person_outline_sharp, title: 'Full Name', name: 'Fenil Patel'),
                  customListTile(leading: Icons.location_history_outlined, title: 'Position', name: 'Repair Person'),
                  customListTile(leading: Icons.phone_in_talk_rounded, title: 'Phone Number', name: '+91 9998887777'),
                  customListTile(leading: Icons.email_outlined, title: 'Email ID', name: 'mymobile@gmail.com'),
                  customListTile(leading: Icons.date_range, title: 'Birth Date', name: '01/01/1996'),
                  customListTile(leading: Icons.male, title: 'Gender', name: 'Male'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
