import 'package:flutter/material.dart';

import 'package:praticing_ui/Widgets/SideBarMenu/sideBarMenu.dart';
import 'package:praticing_ui/Widgets/appBar.dart';
import '../../Widgets/navBarItems.dart';
import '../MyTeams/myTeamView.dart';
import '../ProfilePage/ProfilePage.dart';
import 'Components/createUser.dart';
import 'Components/homeScreenUI.dart';
import 'Components/notificationScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();


  final List<Widget> _BottomNavPages = [
    homeScreenUI(),
    myTeamView(),
    createUser(),
    notificationScreen(),
    ProfilePage(),
  ];

  String? _result;

  int _selectedIndex = 0;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {

    void _onItemTapped(int index) async {
      setState(() {
        _selectedIndex = index;
      });
    }


    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: true,
      appBar: _selectedIndex == 0 ?
      appBar(leading: Icons.menu,title: 'Dashboard',trailing: Icons.search_outlined,scaffoldKey: scaffoldKey,):
      _selectedIndex == 1 ? appBar(leading: Icons.menu,title: 'My Team',scaffoldKey: scaffoldKey) :
      _selectedIndex == 2 ? appBar(leading: Icons.menu,title: 'Create User',scaffoldKey: scaffoldKey) :
      _selectedIndex == 3 ? appBar(leading: Icons.menu,title: 'Notifications',scaffoldKey: scaffoldKey) : appBar(leading: Icons.menu,title: 'My Profile',scaffoldKey: scaffoldKey),

      //drawer: _selectedIndex == 0 || _selectedIndex == 1 || _selectedIndex == 3 ? sideBarMenu() : null,
      drawer: sideBarMenu(),

      body: _BottomNavPages[_selectedIndex],

      bottomNavigationBar: navBarItems(selectedIndex: _selectedIndex,onTap: _onItemTapped,),
    );
  }
}
