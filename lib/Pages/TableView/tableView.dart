import 'package:flutter/material.dart';
import 'package:praticing_ui/Pages/TableView/Components/dataTable.dart';
import 'package:praticing_ui/Pages/TableView/Components/tableOptionMenu.dart';
import 'package:praticing_ui/Utils/constants.dart';
import 'package:praticing_ui/Widgets/SideBarMenu/sideBarMenu.dart';
import 'package:praticing_ui/Widgets/appBar.dart';
import 'package:praticing_ui/Widgets/bottomNavigationBar.dart';

class tableView extends StatelessWidget {

  final String tableName;
  final List<String> columnName; // ['No.','Product Name','Category ID', 'Quantity', 'Price']
  final List<Map<String, dynamic>> rowValues; // {"Product Name": "Iphone 14 Pro Max", "Category ID": "5644645", "Quantity": "3","Price":"265\$"}
  final List<String> tableOptions; //['Total Purchase Device', 'Total Sale Device', 'Create Product']


  tableView({required this.tableName,required this.columnName, required this.rowValues, required this.tableOptions});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: appBar(leading: Icons.arrow_back_ios,title: tableName, list: tableName == 'Product List' ?
      ['Total Purchase Device','Total Sale Device','Create Product'] :
          tableName == 'Customer List' ? ['Total Customer', 'Create Customer'] :
              tableName == 'Repair Device List' ? ['Pending Device','Repaired Device','Fill The Details'] :
                  ['Total Vendor','Create Vendor']
      ),

      drawer: sideBarMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: dataTable(tableName: tableName,columnName: columnName,rowValues: rowValues),
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
