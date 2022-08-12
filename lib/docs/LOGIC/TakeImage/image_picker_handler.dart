// import 'dart:io';
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';

// import 'image_picker_dialog.dart';

// // Pubspec version 2.7.0

// class ImagePickerHandler {
//   ImagePickerDialog imagePicker;
//   final AnimationController _controller;
//   final ImagePickerListener _listener;
//   int type;
//   ImagePickerHandler(this._listener, this._controller);

//   openCamera() async {
//     imagePicker.dismissDialog();
//     XFile images = (await ImagePicker().pickImage(source: ImageSource.camera));
//     final File image = File(images.path);
//     cropImage(image);
//   }

//   openCamera2() async {
//     imagePicker.dismissDialog();
//     XFile images = (await ImagePicker()
//         .pickImage(source: ImageSource.camera, maxWidth: 600));
//     final File image = File(images.path);
//     _listener.userImage(image, this.type);
//   }

//   openGallery() async {
//     imagePicker.dismissDialog();
//     XFile images = (await ImagePicker().pickImage(source: ImageSource.gallery));
//     final File image = File(images.path);
//     cropImage(image);
//   }

//   openGallery2() async {
//     imagePicker.dismissDialog();
//     XFile images = (await ImagePicker()
//         .pickImage(source: ImageSource.gallery, maxWidth: 600));
//     final File image = File(images.path);
//     _listener.userImage(image, this.type);
//   }

//   void init() {
//     imagePicker = new ImagePickerDialog(this, _controller);
//     imagePicker.initState();
//   }

//   Future cropImage(File image) async {
//     File croppedFile = await ImageCropper().cropImage(
//       sourcePath: image.path,
//       aspectRatioPresets: [
//         CropAspectRatioPreset.square,
//         CropAspectRatioPreset.ratio3x2,
//         CropAspectRatioPreset.original,
//         CropAspectRatioPreset.ratio4x3,
//         CropAspectRatioPreset.ratio16x9
//       ],
//       androidUiSettings: const AndroidUiSettings(
//         toolbarTitle: 'Crop',
//         toolbarColor: Colors.red,
//         toolbarWidgetColor: Colors.white,
//         initAspectRatio: CropAspectRatioPreset.original,
//         lockAspectRatio: false,
//       ),
//       iosUiSettings: const IOSUiSettings(
//         minimumAspectRatio: 1.0,
//       ),
//       maxWidth: 512,
//       maxHeight: 512,
//     );

//     _listener.userImage(croppedFile, this.type);
//   }

//   showDialog(BuildContext context, {int tipe = 1}) {
//     this.type = tipe;
//     imagePicker.getImage(context);
//   }

//   showDialog2(BuildContext context, {int tipe = 1}) {
//     this.type = tipe;
//     imagePicker.getImage2(context);
//   }
// }

// abstract class ImagePickerListener {
//   userImage(File _image, int type);
// }


// // Docs
// /*
// 1. in class _InitialScreenState extends State<InitialScreen> add extra syntax 
    
//     'with ImagePickerListener, TickerProviderStateMixin'

//     it looks like this 
//     class _InitialScreenState extends State<InitialScreen> with ImagePickerListener, TickerProviderStateMixin

// 2. add this to the bottom before last bracket

//   @override
//   userImage(File _image, int type) {
//     if (_image != null) {
//       setState(() {
//         if (type == 1) {
//           photosList.add(_image); 
//         }
//       });
//     }
//   }

// 3. create this variable 
  
//   ImagePickerHandler imagePicker;
//   AnimationController _controller;

// 4. InitState this syntax
  
//   _controller =  AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 500),
//     );

//     imagePicker =  ImagePickerHandler(this, _controller);
//     imagePicker.init();

// 5. add this inside aplication section in AndroidManifest.xml

//     <activity
//             android:name="com.yalantis.ucrop.UCropActivity"
//             android:screenOrientation="portrait"
//             android:theme="@style/Theme.AppCompat.Light.NoActionBar"/>

// 6. Go to your app-level build.grade android\app\build.gradle then Scroll down to/inside 
//    "android{ " paste this code carefully(not disturbing any other brakets.)

//    lintOptions {
//             disable 'InvalidPackage'
//             disable "Instantiatable"
//             checkReleaseBuilds false
//             abortOnError false
//         }

// 7. in build.gradle/android/app 
//    change minSdkVersion flutter.minSdkVersion to minSdkVersion 20    
     
//    because at some point in device image picker can only take photo once when it press again no action is happend                 

// 8. call imagePicker. to use the function
//     imagePicker.showDialog(context);
// */