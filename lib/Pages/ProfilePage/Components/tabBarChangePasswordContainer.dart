import 'package:flutter/material.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/saveButton.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/textInput.dart';

import '../../../Utils/constants.dart';

class tabBarChangePasswordContainer extends StatelessWidget {
  const tabBarChangePasswordContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: COLOR_OFFWHITE,
      ),
      child: Column(
        children: [
          Text("your new password must be different from previous used paasword",textAlign: TextAlign.center,
            style: themeData.textTheme.subtitle1,
          ),
          SizedBox(height: height * 0.02,),
          textInput(icon: Icons.lock_open_outlined, hintText: "Enter Current Password"),
          SizedBox(height: height * 0.01,),
          textInput(icon: Icons.lock_open_outlined, hintText: "Enter New Password"),
          SizedBox(height: height * 0.01,),
          textInput(icon: Icons.lock_open_outlined, hintText: "Confirm Password"),
          SizedBox(height: height * 0.01,),
          saveButton(text: "Save",),
        ],
      ),
    );
  }
}
