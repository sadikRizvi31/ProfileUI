import 'package:flutter/material.dart';

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
      backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1485050791488483328/UNJ05AV8_400x400.jpg"),
      foregroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1485050791488483328/UNJ05AV8_400x400.jpg"),
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
