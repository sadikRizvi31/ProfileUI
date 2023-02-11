import 'package:flutter/material.dart';

import 'package:praticing_ui/Pages/HomeScreen/Components/notificationScreen.dart';
import 'package:praticing_ui/Pages/HomeScreen/HomeScreen.dart';
import 'package:praticing_ui/Pages/MyTeams/myTeamView.dart';
import 'package:praticing_ui/Pages/ProfilePage/ProfilePage.dart';
import 'package:praticing_ui/Widgets/SideBarMenu/sideBarMenu.dart';
import 'package:praticing_ui/Widgets/navBarItems.dart';
import '../Pages/HomeScreen/Components/createUser.dart';
import 'appBar.dart';

class bottomNavigationBar extends StatefulWidget {

  int? index;
  bottomNavigationBar([this.index]);

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {

  final List<Widget> _pages = [    HomeScreen(),    myTeamView(),    createUser(), notificationScreen(), ProfilePage()  ];

  int? _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.index;
  }



  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      appBar: _selectedIndex == 0 ?
      appBar(leading: Icons.menu,title: 'Dashboard',trailing: Icons.search_outlined):
      _selectedIndex == 1 ? appBar(leading: Icons.menu,title: 'My Team',) :
      _selectedIndex == 2 ? appBar(leading: Icons.arrow_back_ios,title: 'Create User',) :
      _selectedIndex == 3 ? appBar(leading: Icons.menu,title: 'Notifications',) :
      appBar(leading: Icons.arrow_back_ios,title: 'My Profile',),
      drawer: _selectedIndex == 0 || _selectedIndex == 1 || _selectedIndex == 3 ? sideBarMenu() : null,
      body: _pages[_selectedIndex!],
      bottomNavigationBar: navBarItems(selectedIndex: _selectedIndex!,onTap: _onItemTapped,)
    );
  }
}
