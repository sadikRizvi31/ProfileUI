import 'package:flutter/material.dart';

import '../Pages/HomeScreen/Components/createUser.dart';
import '../Utils/constants.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {

  int index = 0;
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
      currentIndex: index,
      selectedItemColor: COLOR_INDIGO,
      unselectedItemColor: COLOR_DARKGREY,
      onTap: (int newIndex){
        setState((){
          index = newIndex;
          if(index == 2){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => createUser()));
          }
        });
      },
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
