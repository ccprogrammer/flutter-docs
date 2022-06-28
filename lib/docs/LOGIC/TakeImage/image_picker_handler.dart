import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_documentation/docs/LOGIC/TakeImage/image_picker_dialog.dart';


class ImagePickerHandler {
 late ImagePickerDialog imagePicker;
  AnimationController _controller;
  ImagePickerListener _listener;
  int type = 1;
  
  ImagePickerHandler(this._listener, this._controller);

  openCamera() async {
    imagePicker.dismissDialog();
    XFile? images = (await ImagePicker().pickImage(source: ImageSource.camera));
    final File image = File(images!.path);
    cropImage(image);
  }

  openCamera2() async {
    imagePicker.dismissDialog();
    XFile? images = (await ImagePicker()
        .pickImage(source: ImageSource.camera, maxWidth: 600));
    final File image = File(images!.path);
    _listener.userImage(image, this.type);
  }

  openGallery() async {
    imagePicker.dismissDialog();
    XFile? images = (await ImagePicker().pickImage(source: ImageSource.gallery));
    final File image = File(images!.path);
    cropImage(image);
  }

  openGallery2() async {
    imagePicker.dismissDialog();
    XFile? images = (await ImagePicker()
        .pickImage(source: ImageSource.gallery, maxWidth: 600));
    final File image = File(images!.path);
    _listener.userImage(image, this.type);
  }

  void init() {
    imagePicker = new ImagePickerDialog(this, _controller);
    imagePicker.initState();
  }

  Future cropImage(File image) async {
    File? croppedFile = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      androidUiSettings: AndroidUiSettings(
        toolbarTitle: 'Crop',
        toolbarColor: Colors.red,
        toolbarWidgetColor: Colors.white,
        initAspectRatio: CropAspectRatioPreset.original,
        lockAspectRatio: false,
      ),
      iosUiSettings: IOSUiSettings(
        minimumAspectRatio: 1.0,
      ),
      maxWidth: 512,
      maxHeight: 512,
    );

    _listener.userImage(croppedFile!, this.type);
  }

  showDialog(BuildContext context, {int tipe = 1}) {
    this.type = tipe;
    imagePicker.getImage(context);
  }

  showDialog2(BuildContext context, {int tipe = 1}) {
    this.type = tipe;
    imagePicker.getImage2(context);
  }
}

abstract class ImagePickerListener {
  userImage(File _image, int type);
}
