import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../Utils/constants.dart';

class datePicker extends StatefulWidget {

  String hintText;

  datePicker({required this.hintText});

  @override
  State<datePicker> createState() => _datePickerState();
}

class _datePickerState extends State<datePicker> {
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
          child: Icon(Icons.calendar_month_outlined,size: 25,color: COLOR_INDIGO,),
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
              style: themeData.textTheme.headline5,
              keyboardType: TextInputType.none,
              readOnly: true,
              decoration: new InputDecoration(
                isCollapsed: true,
                border: InputBorder.none,
                hintText: widget.hintText,
                hintStyle: themeData.textTheme.headline4,
              ),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                    context: context, initialDate: DateTime.now(),
                    firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                    lastDate: DateTime(2101)
                );

                if(pickedDate != null ){
                  print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                  String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                  print(formattedDate); //formatted date output using intl package =>  2021-03-16
                  //you can implement different kind of Date Format here according to your requirement

                  setState(() {
                    widget.hintText = formattedDate; //set output date to TextField value.
                  });
                }else{
                  print("Date is not selected");
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
