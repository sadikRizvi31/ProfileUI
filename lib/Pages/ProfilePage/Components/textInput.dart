import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class textInput extends StatelessWidget {

  final IconData icon;
  final String hintText;
  final IconData? suffixIcon;
  final TextInputType keyboardType;

  textInput({required this.icon,required this.hintText,this.suffixIcon, required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: COLOR_GREY,
          ),
          padding: const EdgeInsets.all(5),
          child: Icon(icon,size: 25,color: COLOR_INDIGO,),
        ),
        SizedBox(width: 7.0,),
        Flexible(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.7,
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: COLOR_GREY,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: TextField(
              keyboardType: keyboardType,
              decoration: new InputDecoration(
                isCollapsed: true,
                border: InputBorder.none,
                suffixIcon: suffixIcon != null ? IconButton(
                    icon: Icon(suffixIcon,size: 15),
                    onPressed: () {
                      debugPrint('222');
                    }
                ) : null,
                hintText: hintText,
                hintStyle: themeData.textTheme.headline4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
