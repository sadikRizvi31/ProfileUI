import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class dashBoardCards extends StatelessWidget {

  final String title;
  final String info1;
  final String info2;
  final String image;

  dashBoardCards({required this.title,required this.info1,required this.info2,required this.image});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    final ThemeData themeData = Theme.of(context);

    return Container(
      height: height * 0.2,
      decoration: BoxDecoration(
          color: COLOR_OFFWHITE,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: COLOR_GREY,
              blurRadius: 5.0,
            ),
          ]
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(title,style: themeData.textTheme.headline3,),
              Text(info1,style: themeData.textTheme.bodyText1,),
              Text(info2,style: themeData.textTheme.bodyText1,),
            ],
          ),
          Spacer(),
          Image.network(
            image,
            width: 100,
            height: 100,
            color: COLOR_INDIGO,
          ),
        ],
      ),
    );
  }
}
