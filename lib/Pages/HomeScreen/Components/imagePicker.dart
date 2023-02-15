import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Utils/constants.dart';

class imagePicker extends StatefulWidget {

  final IconData icon;
  String hintText;

  imagePicker({required this.icon,required this.hintText});

  @override
  State<imagePicker> createState() => _imagePickerState();
}

class _imagePickerState extends State<imagePicker> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

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
        SizedBox(width: 7.0,),
        Flexible(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.7,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: COLOR_GREY,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: TextField(
                  readOnly: true,
                  style: themeData.textTheme.headline5,
                  keyboardType: TextInputType.none,
                  decoration: new InputDecoration(
                    isCollapsed: true,
                    border: InputBorder.none,
                    hintText: widget.hintText,
                    hintStyle: themeData.textTheme.headline4,
                  ),
                ),
              ),
              Positioned(
                right: 1.0,
                top: 0.0,
                child: TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(COLOR_INDIGO),
                  ),
                    icon: Icon(Icons.file_present_outlined,size: 20,color: COLOR_WHITE),
                    onPressed: () {
                      pickImage();
                      setState(() {
                        widget.hintText = image!.path.toString();
                      });
                    },
                    label: Text('browse',style: TextStyle(color: COLOR_WHITE),)
                ),
              ),
            ],
          )
        ),
      ],
    );
  }
}
