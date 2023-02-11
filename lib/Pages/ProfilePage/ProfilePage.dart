import 'package:flutter/material.dart';

import 'package:praticing_ui/Pages/ProfilePage/Components/CircularImage.dart';
import 'package:praticing_ui/Pages/ProfilePage/Components/tabBarItems.dart';
import 'package:praticing_ui/Widgets/appBar.dart';

import '../../Widgets/bottomNavigationBar.dart';
import 'Components/tabBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin {

  TabController? tabController;
  void initState() {
    super.initState();
    tabController = TabController(vsync: this,length: 3);
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final ThemeData themeData = Theme.of(context);
    return Material(
      child: DefaultTabController(
        length: 3,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.04,),
              CircularImage(),
              SizedBox(height: height * 0.02,),
              ListTile(
                title: Text(
                  "Sunny Vaniya",
                  style: themeData.textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                subtitle: Text("Shop Owner/Admin",style: themeData.textTheme.bodyText1,textAlign: TextAlign.center,),
              ),
              SizedBox(height: height * 0.02,),
              tabBar(),
              SizedBox(height: height * 0.02,),
              SizedBox(
                height: height * 0.33,
                width: width * 0.90,
                child: tabBarItems(height: height, width: width),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
