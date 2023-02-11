import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class CircularImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 170,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(profileImage),
            foregroundImage: NetworkImage(profileImage),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 2.0,
              fillColor: Color(0xFFF5F6F9),
              child: Icon(Icons.image_outlined, color: COLOR_INDIGO,),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
