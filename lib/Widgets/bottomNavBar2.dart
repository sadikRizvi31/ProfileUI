import 'package:flutter/material.dart';

import '../Pages/HomeScreen/Components/createUser.dart';
import '../Pages/HomeScreen/Components/homeScreenUI.dart';
import '../Pages/HomeScreen/Components/notificationScreen.dart';
import '../Pages/MyTeams/myTeamView.dart';
import '../Pages/ProfilePage/ProfilePage.dart';
import 'navBarItems.dart';

class bottomNavBar2 extends StatefulWidget {
  const bottomNavBar2({Key? key}) : super(key: key);

  @override
  State<bottomNavBar2> createState() => _bottomNavBar2State();
}

class _bottomNavBar2State extends State<bottomNavBar2> {

  final List<Widget> _BottomNavPages = [    homeScreenUI(),
    myTeamView(),
    createUser(),
    notificationScreen(),
    ProfilePage(),
  ];

  int? _selectedIndex = 0;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);



  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
    return navBarItems(selectedIndex: _selectedIndex!,onTap: _onItemTapped,);
  }
}
