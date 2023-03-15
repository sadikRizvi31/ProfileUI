import 'package:flutter/material.dart';

class notificationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/only_logo.png"),
          ),
          title: Row(
            children: [
              Text('Dear Customer',style: themeData.textTheme.headline5,),
              Text(' your device has been repaired.',style: themeData.textTheme.headline6,),
            ],
          ),
          subtitle: Text('01m ago',style: themeData.textTheme.headline6,),
        );
      },
    );
  }
}
