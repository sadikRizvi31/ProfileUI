import 'package:flutter/material.dart';
import 'package:praticing_ui/Pages/TableView/Components/dropDown.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/saveButton.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/textInput.dart';
import 'package:praticing_ui/Widgets/bottomNavigationBar.dart';

import '../../../Widgets/appBar.dart';

class createUser extends StatelessWidget {
  const createUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(leading: Icons.arrow_back_ios,title: 'Create User',trailing: Icons.more_vert_outlined,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          dropDown(dropDownList: ["Staff/Repairing Person","Sales Manager","Store Manager","Customer"], hint: "Select Position", icon: Icons.location_history_outlined),
          textInput(icon: Icons.account_circle_outlined, hintText: "First Name"),
          textInput(icon: Icons.account_circle_outlined, hintText: "Last Name"),
          textInput(icon: Icons.email_outlined, hintText: "Email ID"),
          textInput(icon: Icons.phone_in_talk_outlined,hintText: "Phone Number",),
          textInput(icon: Icons.calendar_month_outlined, hintText: "Birth Date",suffixIcon: Icons.dangerous),
          dropDown(dropDownList: ["Male","Female"], hint: "Select Position", icon: Icons.female_outlined),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          Container(margin: EdgeInsets.only(left: 22,right: 22),child: saveButton(text: "Save")),
        ],
      ),
      bottomNavigationBar: const bottomNavigationBar(),
    );
  }
}
