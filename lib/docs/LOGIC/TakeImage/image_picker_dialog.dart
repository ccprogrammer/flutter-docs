// import 'dart:async';

// import 'package:flutter/material.dart';

// import 'image_picker_handler.dart';


// // Pubspec version 2.7.0

// class ImagePickerDialog extends StatelessWidget {
//   final ImagePickerHandler _listener;
//   final AnimationController _controller;
//   BuildContext context;
//   int _type = 1;

//   ImagePickerDialog(this._listener, this._controller, {Key key}) : super(key: key);

//   Animation<double> _drawerContentsOpacity;
//   Animation<Offset> _drawerDetailsPosition;

//   void initState() {
//     _drawerContentsOpacity = CurvedAnimation(
//       parent: ReverseAnimation(_controller),
//       curve: Curves.fastOutSlowIn,
//     );
//     _drawerDetailsPosition = Tween<Offset>(
//       begin: const Offset(0.0, 1.0),
//       end: Offset.zero,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.fastOutSlowIn,
//     ));
//   }

//   getImage(BuildContext context) {
//     if (_controller == null ||
//         _drawerDetailsPosition == null ||
//         _drawerContentsOpacity == null) {
//       return;
//     }
//     _controller.forward();
//     showDialog(
//       context: context,
//       builder: (BuildContext context) => SlideTransition(
//         position: _drawerDetailsPosition,
//         child: FadeTransition(
//           opacity: ReverseAnimation(_drawerContentsOpacity),
//           child: this,
//         ),
//       ),
//     );
//   }

//   getImage2(BuildContext context) {
//     if (_controller == null ||
//         _drawerDetailsPosition == null ||
//         _drawerContentsOpacity == null) {
//       return;
//     }
//     _controller.forward();
//     _type = 2;
//     showDialog(
//       context: context,
//       builder: (BuildContext context) => SlideTransition(
//         position: _drawerDetailsPosition,
//         child: FadeTransition(
//           opacity: ReverseAnimation(_drawerContentsOpacity),
//           child: this,
//         ),
//       ),
//     );
//   }

//   void dispose() {
//     _controller.dispose();
//   }

//   startTime() async {
//     var _duration = Duration(milliseconds: 200);
//     return Timer(_duration, navigationPage);
//   }

//   void navigationPage() {
//     Navigator.pop(context);
//   }

//   dismissDialog() {
//     _controller.reverse();
//     startTime();
//   }

//   @override
//   Widget build(BuildContext context) {
//     this.context = context;
//     return Material(
//         type: MaterialType.transparency,
//         child: Opacity(
//           opacity: 1.0,
//           child: Container(
//             padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: () => _listener.openCamera(),
//                   child: roundedButton(
//                       "Camera",
//                       EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                       const Color(0xffed1c24),
//                       const Color(0xFFFFFFFF)),
//                 ),
//                 GestureDetector(
//                   onTap: () => _listener.openGallery(),
//                   // _type == 1
//                   //     ? _listener.openGallery()
//                   //     : _listener.openGallery2(),
//                   child: roundedButton(
//                       "Gallery",
//                       const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                       const Color(0xffed1c24),
//                       const Color(0xFFFFFFFF)),
//                 ),
//                 GestureDetector(
//                   onTap: () => dismissDialog(),
//                   child: roundedButton(
//                       "Cancel",
//                       EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                       const Color(0xffed1c24),
//                       const Color(0xFFFFFFFF)),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }

//   Widget roundedButton(
//       String buttonLabel, EdgeInsets margin, Color bgColor, Color textColor) {
//     return Container(
//       margin: margin,
//       padding: const EdgeInsets.all(15.0),
//       alignment: FractionalOffset.center,
//       decoration: BoxDecoration(
//         color: bgColor,
//         borderRadius: const BorderRadius.all(Radius.circular(100.0)),
//         boxShadow: const <BoxShadow>[
//           BoxShadow(
//             color: Color(0xFF696969),
//             offset: Offset(0.5, 0.5),
//             blurRadius: 0.001,
//           ),
//         ],
//       ),
//       child: Text(
//         buttonLabel,
//         style: TextStyle(
//             color: textColor, fontSize: 18.0, fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
