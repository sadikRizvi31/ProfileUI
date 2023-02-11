import 'package:flutter/material.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/customListTile.dart';
import 'package:praticing_ui/Utils/constants.dart';
import 'package:praticing_ui/Widgets/appBar.dart';

import '../../ProfilePage/Components/CircularImage.dart';

class viewSingleVendor extends StatelessWidget {
  const viewSingleVendor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(leading: Icons.arrow_back_ios,title: 'Vendor Details',),
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
                  customListTile(leading: Icons.store_mall_directory_outlined, title: 'Vendor Name', name: 'My Mobile',trailing: Icons.edit_note_outlined,),
                  customListTile(leading: Icons.person_outline_sharp, title: 'Owner Name', name: 'Jackob Carpenter'),
                  customListTile(leading: Icons.email_outlined, title: 'Email ID', name: 'mymobile@gmail.com'),
                  customListTile(leading: Icons.phone_in_talk_rounded, title: 'Phone Number', name: '+91 9998887777'),
                  customListTile(leading: Icons.my_location_sharp, title: 'Address', name: '40, Shivanjali Arcade, Bhatar, Surat-000000.'),
                  customListTile(leading: Icons.currency_rupee_outlined, title: 'GST No.', name: '24FRLKJ548641',trailing: Icons.image_outlined,),
                  customListTile(leading: Icons.credit_card_outlined, title: 'Adhaar Card', name: '654524545487',trailing: Icons.image_outlined,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
