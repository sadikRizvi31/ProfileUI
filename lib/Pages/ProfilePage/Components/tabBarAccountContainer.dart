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
      child: SingleChildScrollView(
        child: Column(
          children: [
            textInput(icon: Icons.person_outline_sharp, hintText: "Full Name",keyboardType: TextInputType.text),
            textInput(icon: Icons.location_city_outlined, hintText: "Company Name",keyboardType: TextInputType.text),
            textInput(icon: Icons.phone_in_talk_outlined, hintText: "Phone Number",keyboardType: TextInputType.phone),
            textInput(icon: Icons.email_outlined, hintText: "Email ID",keyboardType: TextInputType.emailAddress),
            saveButton(text: "Save"),
          ],
        ),
      ),
    );
  }
}
