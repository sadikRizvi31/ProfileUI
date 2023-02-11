import 'package:flutter/material.dart';
import 'package:praticing_ui/Pages/MyTeams/Components/viewSingleItem.dart';

class Lists extends StatelessWidget {
  const Lists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, position) {
          return Column(
            children: [
              ListTile(
                onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context) => viewSingleItem())); },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://example.com/image.jpg"),
                ),
                title: Text("User Name"),
              ),
              Divider(thickness: 2.0,),
            ],
          );
        },
      ),
    );
  }
}
