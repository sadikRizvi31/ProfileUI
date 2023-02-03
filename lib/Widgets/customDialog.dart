import 'package:flutter/material.dart';

import '../Pages/ProfilePage/Components/saveButton.dart';

class customDialog extends StatelessWidget {

  final List<Widget> childrens;
  final String title;
  final Widget? button;

  customDialog({required this.childrens,required this.title,this.button});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return AlertDialog(
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){},icon: const Icon(Icons.edit_note_outlined)),
              IconButton(onPressed: (){ Navigator.of(context).pop(); }, icon: const Icon(Icons.close)),
            ],
          ),

          Text(title,style: themeData.textTheme.headline3,textAlign: TextAlign.center,),
        ],
      ),
      content: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...childrens
          ],
        ),
      ),
      actions: <Widget>[
        button ?? const SizedBox(),
      ],
    );
  }
}
