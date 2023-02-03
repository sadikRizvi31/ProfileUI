import 'package:flutter/material.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/saveButton.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/textInput.dart';

import '../../../Utils/constants.dart';

class tabBarAccountContainer extends StatelessWidget {
  const tabBarAccountContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: COLOR_OFFWHITE,
      ),
      child: Column(
        children: [
          textInput(icon: Icons.person_outline_sharp, hintText: "Full Name"),
          SizedBox(height: height * 0.01,),
          textInput(icon: Icons.location_city_outlined, hintText: "Company Name"),
          SizedBox(height: height * 0.01,),
          textInput(icon: Icons.phone_in_talk_outlined, hintText: "Phone Number"),
          SizedBox(height: height * 0.01,),
          textInput(icon: Icons.email_outlined, hintText: "Email ID"),
          SizedBox(height: height * 0.01,),
          saveButton(text: "save"),
        ],
      ),
    );
  }
}
