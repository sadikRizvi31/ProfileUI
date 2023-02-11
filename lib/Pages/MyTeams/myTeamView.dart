import 'package:flutter/material.dart';
import 'package:praticing_ui/Utils/constants.dart';
import 'package:praticing_ui/Widgets/appBar.dart';
import 'package:praticing_ui/Widgets/bottomNavigationBar.dart';

import 'Components/Lists.dart';

class myTeamView extends StatefulWidget {
  const myTeamView({Key? key}) : super(key: key);

  @override
  State<myTeamView> createState() => _myTeamViewState();
}

class _myTeamViewState extends State<myTeamView> with SingleTickerProviderStateMixin {

  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData =  Theme.of(context);
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          SizedBox(height: 10.0,),
          TabBar(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            labelStyle: themeData.textTheme.headline5,
            unselectedLabelStyle: themeData.textTheme.headline5,
            indicatorColor: COLOR_INDIGO,
            indicatorWeight: 5.0,
            controller: controller,
            unselectedLabelColor: COLOR_DARKGREY,
            labelColor: COLOR_INDIGO,
            onTap: (index) {},
            tabs: const [
              Tab(text: "Staff/Repair\nPerson",),
              Tab(text: "Sales\nManager"),
              Tab(text: "Store\nManager"),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,

            child: TabBarView(
              children: [
                Lists(),
                Lists(),
                Lists()
              ],
            ),
          )
        ],
      ),
    );
  }
}
