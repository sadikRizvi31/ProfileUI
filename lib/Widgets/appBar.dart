import 'package:flutter/material.dart';
import 'package:praticing_ui/Pages/HomeScreen/Components/createVendor.dart';

import '../Pages/ProfilePage/Components/saveButton.dart';
import '../Pages/ProfilePage/Components/textInput.dart';
import '../Pages/TableView/Components/dropDown.dart';
import '../Utils/constants.dart';
import 'bottomNavigationBar.dart';
import 'customDialog.dart';

class appBar extends StatelessWidget with PreferredSizeWidget {

  final GlobalKey<ScaffoldState>? scaffoldKey;
  final IconData? leading;
  final IconData? trailing;
  final String title;
  final List<String>? list;

  appBar({this.leading,this.trailing,required this.title, this.list,this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    Future<void> createProductDialog(BuildContext context) async {
      return showDialog(
          context: context,
          builder: (context) {
            return customDialog(
              title: "Create Product",
              button: saveButton(text: "Save"),
              childrens: [
                textInput(icon: Icons.production_quantity_limits, hintText: "Product Name",keyboardType: TextInputType.text),
                dropDown(dropDownList: ['01','02','03','04','05'], hint: "Category ID", icon: Icons.account_tree_outlined),
                textInput(icon: Icons.inventory_2_outlined, hintText: "Quantity",keyboardType: TextInputType.number),
                textInput(icon: Icons.currency_rupee_outlined, hintText: "Price",keyboardType: TextInputType.number),
              ],
            );
          }
      );
    }

    Future<void> repairDeviceDetailsDialog(BuildContext context) async {
      return showDialog(
          context: context,
          builder: (context) {
            return customDialog(
              title: "Fill Repair Device Details",
              button: saveButton(text: "Save"),
              childrens: [
                textInput(icon: Icons.phone_android_outlined, hintText: "Product Name",keyboardType: TextInputType.text),
                textInput(icon: Icons.person_outline_sharp, hintText: "Product Holder Name",keyboardType: TextInputType.text),
                textInput(icon: Icons.account_tree_outlined, hintText: "Category ID",keyboardType: TextInputType.number),
                textInput(icon: Icons.report_problem_outlined, hintText: "Problem",keyboardType: TextInputType.text),
                textInput(icon: Icons.phone_in_talk_rounded, hintText: "Phone Number",keyboardType: TextInputType.phone),
                textInput(icon: Icons.my_location_outlined, hintText: "Address",keyboardType: TextInputType.streetAddress),
              ],
            );
          }
      );
    }

    void handleClick(String value) {
      switch (value) {
        case 'Fill The Details':
          repairDeviceDetailsDialog(context);
          break;
        case 'Create Vendor':
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => createVendor()));
          break;
        case 'Create Product':
          createProductDialog(context);
          break;
        case 'Create Customer':
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => bottomNavigationBar(2)));
          break;
      }
    }

    final ThemeData themeData = Theme.of(context);
    return AppBar(

      centerTitle: true,
      backgroundColor: COLOR_WHITE,
      elevation: 3.0,
      title: Text(title,style: themeData.textTheme.headline2,textAlign: TextAlign.center),
      leading: IconButton(
        icon: Icon(
          leading,
          color: COLOR_DARKGREY,
        ),
        onPressed: () {
          (leading.toString()).contains('IconData(U+0E3DC)') ? scaffoldKey!.currentState!.openDrawer() : Navigator.pop(context);
          print(leading);
        },
      ),
      actions: [
        //IconButton(onPressed: (){}, icon: Icon(trailing != null ? trailing : null),tooltip: 'search icon',color: COLOR_INDIGO,),
        list == null ? Icon(trailing,color: COLOR_DARKGREY,) :
        PopupMenuButton<String>(
          icon: Icon(Icons.more_vert_outlined,color: COLOR_DARKGREY,),
          onSelected: handleClick,
          itemBuilder: (BuildContext context) {
            return list!.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
