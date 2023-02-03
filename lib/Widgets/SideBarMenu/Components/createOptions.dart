import 'package:flutter/material.dart';
import 'package:praticing_ui/Pages/AboutUs_T&C/aboutUs_TC.dart';
import 'package:praticing_ui/Pages/ProfilePage/ProfilePage.dart';
import 'package:praticing_ui/Utils/constants.dart';

import '../../../Pages/TableView/tableView.dart';

class createOptions extends StatelessWidget {

  final String optionName;

  createOptions({required this.optionName});



  @override
  Widget build(BuildContext context) {

    void selectRoute(){
      switch(optionName){
        case 'My Profile':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfilePage()));
        }break;
        case 'Product List':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => tableView(
            tableName: optionName,
            columnName: ['No.','Product Name','Category ID', 'Quantity', 'Price'],
            rowValues: [{"Product Name": "Iphone 14 Pro Max", "Category ID": "5644645", "Quantity": "3","Price":"265\$"},],
            tableOptions: ['Total Purchase Device', 'Total Sale Device', 'Create Product'],
          )));
        }break;
        case 'Customer List':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => tableView(
            tableName: optionName,
            columnName: ['No.','Customer Name','Email ID', 'Phone Number'],
            rowValues: [{"Customer Name": "Nick Lawson", "Email ID": "nicklawson@gmail.com", "Phone Number": "+91 9998887777"},],
            tableOptions: ['Total Customer', 'Create Customer'],

          )));
        }break;
        case 'Repair Device List':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => tableView(
            tableName: optionName,
            columnName: ['No.','Product Name','Problem', 'Status','Action'],
            rowValues: [{"Product Name": "Iphone 14 pro max", "Problem": "Software", "Status": Icon(Icons.circle_sharp),"Action":Icon(Icons.info_sharp,color: COLOR_INDIGO,)},],
            tableOptions: ['Pending Device', 'Repaired Device','Fill The Details'],
          )));
        }break;
        case 'Terms & Conditions':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => aboutUs_TC(title: optionName, text: "T&C")));
        }break;
        case 'About Us':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => aboutUs_TC(title: optionName, text: "Hello")));
        }break;
        default: {
          print("This is default case");
        } break;
      }
    }

    final ThemeData themeData = Theme.of(context);
    return ListTile(
      visualDensity: const VisualDensity(vertical: -4),
      leading: const Icon(Icons.circle_outlined),
      title: Text(optionName,style: themeData.textTheme.headline5,),
      onTap: () => {
        selectRoute(),
      },
    );
  }
}
