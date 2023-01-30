import 'package:flutter/material.dart';

import 'package:praticing_ui/Pages/ProfilePage/Components/customListTile.dart';
import '../../../Utils/constants.dart';

class tabBarContainer extends StatelessWidget {
  const tabBarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: COLOR_OFFWHITE,
      ),
      child: Column(
        children: [
          customListTile(leading: Icons.person_outline_sharp, title: "Full Name", name: "Sunny H. Vaniya",trailing: Icons.edit_note_outlined,),
          customListTile(leading: Icons.location_city_outlined, title: "Company Name", name: "Vijay Sales"),
          customListTile(leading: Icons.phone_in_talk_outlined, title: "Phone Number", name: "+91 9998887777"),
          customListTile(leading: Icons.email_outlined, title: "Email ID", name: "sunnyvaniya12@gmail.com")
        ],
      ),
    );
  }
}
