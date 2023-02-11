// import 'package:flutter/material.dart';
//
// import 'package:praticing_ui/Widgets/SideBarMenu/Components/createOptions.dart';
// import 'package:praticing_ui/Widgets/SideBarMenu/Components/drawerHeader.dart';
//
// class sideBarMenu2 extends StatelessWidget {
//   final Function(String)? onDrawerItemTapped;
//   sideBarMenu2({required this.onDrawerItemTapped});
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//
//       child: Column(
//         children: <Widget>[
//           drawerHeader(),
//           SizedBox(height: 10.0,),
//           createOptions(optionName: "My Profile",onDrawerItemTapped: onDrawerItemTapped),
//           createOptions(optionName: "Product List",onDrawerItemTapped: onDrawerItemTapped),
//           createOptions(optionName: "Customer List",onDrawerItemTapped: onDrawerItemTapped),
//           createOptions(optionName: "Repair Device List",onDrawerItemTapped: onDrawerItemTapped),
//           createOptions(optionName: "Vendor List",onDrawerItemTapped: onDrawerItemTapped),
//           createOptions(optionName: "Report",onDrawerItemTapped: onDrawerItemTapped),
//           createOptions(optionName: "Terms & Conditions",onDrawerItemTapped: onDrawerItemTapped),
//           createOptions(optionName: "About Us",onDrawerItemTapped: onDrawerItemTapped),
//           Expanded(child: Container()),
//           createOptions(optionName: "Logout",onDrawerItemTapped: onDrawerItemTapped),
//         ],
//       ),
//     );
//   }
// }
