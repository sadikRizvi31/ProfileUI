import 'package:flutter/material.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/customListTile.dart';

import '../../../Widgets/customDialog.dart';
import '../../ProfilePage/Components/saveButton.dart';
import '../../ProfilePage/Components/textInput.dart';
import 'dropDown.dart';

class dataTable extends StatelessWidget {

  final String tableName;
  List<Map<String, dynamic>> rowValues = [
    {"Product Name": "Iphone 14 Pro Max", "Category ID": "5644645", "Quantity": "3","Price":"265\$"},
  ];

  final List<String>? columnName;

  dataTable({required this.tableName,this.columnName,required this.rowValues});

  final int index = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    Future<void> deviceStatusUpdateDialog(BuildContext context) async {
      return showDialog(
          context: context,
          builder: (context) {
            return customDialog(
              title: "Repair Device Status Update",
              button: saveButton(text: "Update"),
              childrens: [
                dropDown(dropDownList: ['Running','Pending','Done'], hint: "Select Status", icon: Icons.account_tree_outlined),
                textInput(icon: Icons.currency_rupee_outlined, hintText: "Cost"),
                textInput(icon: Icons.calendar_month_outlined, hintText: "Estimated Date/Time"),
              ],
            );
          }
      );
    }

    Future<void> deviceRepairDetailsDialog(BuildContext context) async {
      return showDialog(
          context: context,
          builder: (context) {
            return customDialog(
              title: "Repair Device Details",
              button: null,
              childrens: [
                customListTile(leading: Icons.phone_android_outlined, title: "Product Name", name: "Iphone 14 pro max"),
                customListTile(leading: Icons.person_outline_sharp, title: "Product Holder Name", name: "Harmish Vaidya"),
                customListTile(leading: Icons.account_tree_outlined, title: "Category ID", name: "01"),
                customListTile(leading: Icons.info_sharp, title: "Problem", name: "Display, Speaker"),
                customListTile(leading: Icons.phone_in_talk_rounded, title: "Phone Number", name: "+91 9998887777"),
                customListTile(leading: Icons.my_location_outlined, title: "Address", name: "47, Shivdhara Society, Pal Gam, Surat-395010"),
              ],
            );
          }
      );
    }

    DataColumn addColumn(String name){
      return DataColumn(
        label: Text(name,style: themeData.textTheme.bodyText2,),
      );
    }

    DataCell addCell(var name){
      return name.runtimeType == Icon ? DataCell(name,onTap: (){ if((name.toString()).contains("IconData(U+0EA37)")) { deviceStatusUpdateDialog(context); } }): DataCell(Text(name,style: themeData.textTheme.subtitle1));
    }

    return DataTable(
      showCheckboxColumn: false,
      dividerThickness: 2,
        columns: [
          for(String name in columnName!) addColumn(name),
        ],
        rows: [
          ...rowValues.map(((element) => DataRow(
              onSelectChanged:  (bool? selected) {
                if (selected!) {
                  //log.add('row-selected: ${itemRow.index}');
                  if(tableName == 'Repair Device List'){
                    deviceRepairDetailsDialog(context);
                  }
                }
              },
              cells: <DataCell>[
                addCell((index+1).toString()),
                for(var value in element.values) addCell(value)
              ],
            )),
          ),
        ]
    );
  }
}
