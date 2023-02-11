import 'package:flutter/material.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/saveButton.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/textInput.dart';

import '../../../Widgets/appBar.dart';

class createVendor extends StatelessWidget {
  const createVendor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(leading: Icons.arrow_back_ios,title: 'Create User',trailing: Icons.more_vert_outlined,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          textInput(icon: Icons.store_mall_directory_outlined, hintText: "Vendor Name",keyboardType: TextInputType.text),
          textInput(icon: Icons.account_circle_outlined, hintText: "Owner Name",keyboardType: TextInputType.text),
          textInput(icon: Icons.email_outlined, hintText: "Email ID",keyboardType: TextInputType.emailAddress),
          textInput(icon: Icons.phone_in_talk_outlined,hintText: "Phone Number",keyboardType: TextInputType.phone),
          textInput(icon: Icons.my_location_outlined, hintText: "Address",keyboardType: TextInputType.streetAddress),
          textInput(icon: Icons.currency_rupee, hintText: "GST No.",suffixIcon: Icons.dangerous,keyboardType: TextInputType.number),
          textInput(icon: Icons.image_outlined, hintText: "GST Certificate Image", suffixIcon: Icons.photo_camera_outlined,keyboardType: TextInputType.none),
          textInput(icon: Icons.file_present_rounded, hintText: "Document Number",suffixIcon: Icons.dangerous,keyboardType: TextInputType.number),
          textInput(icon: Icons.document_scanner_outlined, hintText: "Document Image", suffixIcon: Icons.photo_camera_outlined,keyboardType: TextInputType.none),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          Container(margin: EdgeInsets.only(left: 22,right: 22),child: saveButton(text: "Save")),
        ],
      ),
    );
  }
}
