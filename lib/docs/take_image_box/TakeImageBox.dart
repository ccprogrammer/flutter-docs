import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TakeImageBox extends StatefulWidget {
  const TakeImageBox({Key? key}) : super(key: key);

  @override
  State<TakeImageBox> createState() => _TakeImageBoxState();
}

class _TakeImageBoxState extends State<TakeImageBox> {
  XFile? _pickedPhoto; // or change XFile to dynamic
  getImage() async {
    ImagePicker _picker = ImagePicker();
    _pickedPhoto = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.2,
      height: height * 0.25,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(
          color: Colors.white24,
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            getImage();
          },
          child: _pickedPhoto == null
              ? Icon(
                  Icons.camera_alt_sharp,
                  color: Colors.white,
                  size: width * 0.1,
                )
              : Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: FileImage(File(_pickedPhoto!.path)),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
