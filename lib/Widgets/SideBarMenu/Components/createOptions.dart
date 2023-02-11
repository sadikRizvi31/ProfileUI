import 'package:flutter/material.dart';

import 'package:praticing_ui/Pages/AboutUs_T&C/aboutUs_TC.dart';
import 'package:praticing_ui/Utils/constants.dart';
import 'package:praticing_ui/Widgets/bottomNavigationBar.dart';
import '../../../Pages/ProfilePage/Components/saveButton.dart';
import '../../../Pages/ProfilePage/Components/textInput.dart';
import '../../../Pages/TableView/Components/dropDown.dart';
import '../../../Pages/TableView/tableView.dart';
import '../../customDialog.dart';

class createOptions extends StatefulWidget {

  final String optionName;

  createOptions({required this.optionName});

  @override
  State<createOptions> createState() => _createOptionsState();
}

class _createOptionsState extends State<createOptions> {
  @override
  Widget build(BuildContext context) {

    Future<void> reportDialog(BuildContext context) async {
      return showDialog(
          context: context,
          builder: (context) {
            return customDialog(
              title: "Create Product",
              button: saveButton(text: "Download"),
              childrens: [
                textInput(icon: Icons.calendar_month_outlined, hintText: "Select Last Date",keyboardType: TextInputType.datetime),
                textInput(icon: Icons.calendar_month_outlined, hintText: "Select First Date",keyboardType: TextInputType.datetime),
                dropDown(dropDownList: ['01','02','03','04','05'], hint: "Category ID", icon: Icons.account_tree_outlined),
              ],
            );
          }
      );
    }

    void selectRoute(){
      switch(widget.optionName){
        case 'My Profile':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => bottomNavigationBar(4)));
        }break;
        case 'Product List':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => tableView(
            tableName: widget.optionName,
            columnName: ['No.','Product Name','Category ID', 'Quantity', 'Price'],
            rowValues: [{"Product Name": "Iphone 14 Pro Max", "Category ID": "5644645", "Quantity": "3","Price":"265\$"},],
            tableOptions: ['Total Purchase Device', 'Total Sale Device', 'Create Product'],
          )));
        }break;
        case 'Customer List':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => tableView(
            tableName: widget.optionName,
            columnName: ['No.','Customer Name','Email ID', 'Phone Number'],
            rowValues: [{"Customer Name": "Nick Lawson", "Email ID": "nicklawson@gmail.com", "Phone Number": "+91 9998887777"},],
            tableOptions: ['Total Customer', 'Create Customer'],

          )));
        }break;
        case 'Repair Device List':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => tableView(
            tableName: widget.optionName,
            columnName: ['No.','Product Name','Problem', 'Status','Action'],
            rowValues: [{"Product Name": "Iphone 14 pro max", "Problem": "Software", "Status": Icon(Icons.circle_sharp),"Action":Icon(Icons.info_sharp,color: COLOR_INDIGO,)},],
            tableOptions: ['Pending Device', 'Repaired Device','Fill The Details'],
          )));
        }break;
        case 'Vendor List':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => tableView(
            tableName: widget.optionName,
            columnName: ['No.','Vendor Name','Owner Name', 'Email ID'],
            rowValues: [{"Vendor Name": "My Mobile", "Owner Name": "Jacob Carpenter", "Email ID": 'mymobile@gmail.com'}],
            tableOptions: ['Total Vendor', 'Create Vendor'],
          )));
        }break;
        case 'Report':{
          reportDialog(context);
        }break;
        case 'Terms & Conditions':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => aboutUs_TC(title: widget.optionName, text: "T&C")));
        }break;
        case 'About Us':{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => aboutUs_TC(title: widget.optionName, text: "Hello")));
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
      title: Text(widget.optionName,style: themeData.textTheme.headline5,),
      onTap: () async {
        selectRoute();
      },
    );
  }
}