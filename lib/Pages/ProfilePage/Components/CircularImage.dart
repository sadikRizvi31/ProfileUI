import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Utils/constants.dart';

class CircularImage extends StatefulWidget {

  @override
  State<CircularImage> createState() => _CircularImageState();
}

class _CircularImageState extends State<CircularImage> {

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
    return SizedBox(
      height: 115,
      width: 170,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: image != null ? FileImage(image!) as ImageProvider : NetworkImage(profileImage),
            //foregroundImage: image != null ? Image.file(image!) as ImageProvider : NetworkImage(profileImage),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: RawMaterialButton(
              onPressed: () {
                pickImage();
              },
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
