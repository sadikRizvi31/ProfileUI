import 'package:flutter/material.dart';

import '../Utils/constants.dart';

class navBarItems extends StatelessWidget {
  final int selectedIndex;
  final Function(int)? onTap;
  navBarItems({required this.selectedIndex,this.onTap});

  List<Widget> body = const[
    Icon(Icons.home),
    Icon(Icons.people_alt_outlined),
    Icon(Icons.person_add_alt_outlined),
    Icon(Icons.notifications),
    CircleAvatar(
      radius: 10,
      backgroundImage: NetworkImage(profileImage),
      foregroundImage: NetworkImage(profileImage),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,

      selectedItemColor: COLOR_INDIGO,
      unselectedItemColor: COLOR_DARKGREY,
      onTap: onTap != null ? onTap : null,
      // onTap: (int newIndex){
      //   setState((){
      //     index = newIndex;
      //     switch(index){
      //       case 0:{
      //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
      //       }break;
      //       case 1:{
      //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => myTeamView()));
      //       }break;
      //       case 2:{
      //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => createUser()));
      //       }break;
      //       case 3:{
      //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => notificationScreen()));
      //       }break;
      //       case 4:{
      //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
      //       }break;
      //     }
      //   });
      // },
      items: [
        BottomNavigationBarItem(
            icon: body[0],
            label: "Home"
        ),
        BottomNavigationBarItem(
            icon: body[1],
            label: "My Team"
        ),
        BottomNavigationBarItem(
            icon: body[2],
            label: "Create Users"
        ),
        BottomNavigationBarItem(
            icon: body[3],
            label: "Notifications"
        ),
        BottomNavigationBarItem(
            icon: body[4],
            label: "Profile"
        ),
      ],
    );
  }
}
