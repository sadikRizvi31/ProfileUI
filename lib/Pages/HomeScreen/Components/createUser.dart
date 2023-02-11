import 'package:flutter/material.dart';
import 'package:praticing_ui/Pages/TableView/Components/dropDown.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/saveButton.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/textInput.dart';

class createUser extends StatelessWidget {
  const createUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          dropDown(dropDownList: ["Staff/Repairing Person","Sales Manager","Store Manager","Customer"], hint: "Select Position", icon: Icons.location_history_outlined,),
          textInput(icon: Icons.account_circle_outlined, hintText: "First Name",keyboardType: TextInputType.text,),
          textInput(icon: Icons.account_circle_outlined, hintText: "Last Name",keyboardType: TextInputType.text),
          textInput(icon: Icons.email_outlined, hintText: "Email ID",keyboardType: TextInputType.emailAddress),
          textInput(icon: Icons.phone_in_talk_outlined,hintText: "Phone Number",keyboardType: TextInputType.phone),
          textInput(icon: Icons.calendar_month_outlined, hintText: "Birth Date",suffixIcon: Icons.dangerous,keyboardType: TextInputType.datetime),
          dropDown(dropDownList: ["Male","Female"], hint: "Gender", icon: Icons.female_outlined),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          Container(margin: EdgeInsets.only(left: 22,right: 22),child: saveButton(text: "Save")),
        ],
      ),
    );
  }
}
