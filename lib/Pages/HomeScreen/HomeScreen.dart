import 'package:flutter/material.dart';

import 'package:praticing_ui/Pages/HomeScreen/Components/dashBoardCards.dart';
import 'package:praticing_ui/Widgets/appBar.dart';
import 'package:praticing_ui/Widgets/bottomNavigationBar.dart';
import '../../Widgets/SideBarMenu/sideBarMenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int device = 0;
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: sideBarMenu(),
      appBar: appBar(leading: Icons.menu,title: 'DashBoard',trailing: Icons.search_outlined,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            dashBoardCards(title: "Total Sale", info1: "Device: "+device.toString(), info2: "Amount: "+amount.toString(), image: "https://static.thenounproject.com/png/1625260-200.png"),
            dashBoardCards(title: "Total Purchase", info1: "Device: "+device.toString(), info2: "Amount: "+amount.toString(), image: "https://cdn-icons-png.flaticon.com/128/1067/1067555.png"),
            dashBoardCards(title: "Total Stock", info1: "Device: "+device.toString(), info2: "Amount: "+amount.toString(), image: "https://static.thenounproject.com/png/1877748-200.png"),
            dashBoardCards(title: "Total Repair Device", info1: "Repair: "+device.toString(), info2: "Pending: "+amount.toString(), image: "https://cdn-icons-png.flaticon.com/512/35/35223.png"),
          ],
        ),
      ),
      bottomNavigationBar: const bottomNavigationBar(),
    );
  }
}
