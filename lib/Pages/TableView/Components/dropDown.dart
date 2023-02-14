import 'package:flutter/material.dart';

import '../../../Utils/constants.dart';

class dropDown extends StatefulWidget {

  final List dropDownList;
  final String hint;
  final IconData icon;


  dropDown({required this.dropDownList, required this.hint, required this.icon});

  @override
  State<dropDown> createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {

  String? currentSelectedValue;
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
          child: Icon(widget.icon,size: 25,color: COLOR_INDIGO,),
        ),
        SizedBox(width: 9.0,),
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
            child: DropdownButton(
              isExpanded: true,
              value: currentSelectedValue,
              hint: Text(widget.hint,style: themeData.textTheme.headline4,),
              onChanged: (newValue) {
                setState(() {
                  currentSelectedValue = newValue.toString();
                });
              },
              items: widget.dropDownList.map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,style: themeData.textTheme.headline5,),
                );
              }).toList(),
            )
          ),
        ),
      ],
    );
  }
}
