import 'package:flutter/material.dart';

import 'package:praticing_ui/Widgets/SideBarMenu/sideBarMenu.dart';
import 'package:praticing_ui/Widgets/appBar.dart';
import '../../Utils/constants.dart';
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
      resizeToAvoidBottomInset: true,
      appBar: _selectedIndex == 0 ?
      appBar(leading: Icons.menu,title: 'Dashboard',trailing: Icons.search_outlined):
      _selectedIndex == 1 ? appBar(leading: Icons.menu,title: 'My Team',) :
      _selectedIndex == 2 ? appBar(leading: Icons.arrow_back_ios,title: 'Create User',) :
      _selectedIndex == 3 ? appBar(leading: Icons.menu,title: 'Notifications',) : appBar(leading: Icons.arrow_back_ios,title: 'My Profile',),

      drawer: _selectedIndex == 0 || _selectedIndex == 1 || _selectedIndex == 3 ? sideBarMenu() : null,

      body: _BottomNavPages[_selectedIndex],

      bottomNavigationBar: navBarItems(selectedIndex: _selectedIndex,onTap: _onItemTapped,),
    );
  }
}
