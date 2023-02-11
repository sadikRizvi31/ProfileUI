import 'package:flutter/material.dart';

import 'package:praticing_ui/Widgets/SideBarMenu/Components/createOptions.dart';
import 'package:praticing_ui/Widgets/SideBarMenu/Components/drawerHeader.dart';

class sideBarMenu extends StatelessWidget {
  const sideBarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Column(
          children: <Widget>[
          drawerHeader(),
          SizedBox(height: 10.0,),
            createOptions(optionName: "My Profile",),
            createOptions(optionName: "Product List",),
            createOptions(optionName: "Customer List",),
            createOptions(optionName: "Repair Device List",),
            createOptions(optionName: "Vendor List",),
            createOptions(optionName: "Report",),
            createOptions(optionName: "Terms & Conditions",),
            createOptions(optionName: "About Us",),
          Expanded(child: Container()),
          createOptions(optionName: "Logout",),
        ],
      ),
    );
  }
}
