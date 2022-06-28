import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_documentation/docs/LOGIC/TakeImage/image_picker_handler.dart';

class ImagePickerDialog extends StatelessWidget {
  ImagePickerHandler _listener;
  AnimationController _controller;
  BuildContext? context;
  int _type = 1;

  ImagePickerDialog(this._listener, this._controller);

  Animation<double>? _drawerContentsOpacity;
  Animation<Offset>? _drawerDetailsPosition;

  void initState() {
    _drawerContentsOpacity = new CurvedAnimation(
      parent: new ReverseAnimation(_controller),
      curve: Curves.fastOutSlowIn,
    );
    _drawerDetailsPosition = new Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(new CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ));
  }

  getImage(BuildContext context) {
    if (_controller == null ||
        _drawerDetailsPosition == null ||
        _drawerContentsOpacity == null) {
      return;
    }
    _controller.forward();
    showDialog(
      context: context,
      builder: (BuildContext context) => new SlideTransition(
        position: _drawerDetailsPosition!,
        child: new FadeTransition(
          opacity: new ReverseAnimation(_drawerContentsOpacity!),
          child: this,
        ),
      ),
    );
  }

  getImage2(BuildContext context) {
    if (_controller == null ||
        _drawerDetailsPosition == null ||
        _drawerContentsOpacity == null) {
      return;
    }
    _controller.forward();
    _type = 2;
    showDialog(
      context: context,
      builder: (BuildContext context) => new SlideTransition(
        position: _drawerDetailsPosition!,
        child: new FadeTransition(
          opacity: new ReverseAnimation(_drawerContentsOpacity!),
          child: this,
        ),
      ),
    );
  }

  void dispose() {
    _controller.dispose();
  }

  startTime() async {
    var _duration = new Duration(milliseconds: 200);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pop(context!);
  }

  dismissDialog() {
    _controller.reverse();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Material(
        type: MaterialType.transparency,
        child: new Opacity(
          opacity: 1.0,
          child: new Container(
            padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new GestureDetector(
                  onTap: () => _listener.openCamera(),
                  //  _type == 1
                  //     ? _listener.openCamera()
                  //     : _listener.openCamera2(),
                  child: roundedButton(
                      "Camera",
                      EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      const Color(0xffed1c24),
                      const Color(0xFFFFFFFF)),
                ),
                new GestureDetector(
                  onTap: () => _listener.openGallery(),
                  // _type == 1
                  //     ? _listener.openGallery()
                  //     : _listener.openGallery2(),
                  child: roundedButton(
                      "Gallery",
                      EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      const Color(0xffed1c24),
                      const Color(0xFFFFFFFF)),
                ),
                new GestureDetector(
                  onTap: () => dismissDialog(),
                  child: roundedButton(
                      "Cancel",
                      EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      const Color(0xffed1c24),
                      const Color(0xFFFFFFFF)),
                ),
              ],
            ),
          ),
        ));
  }

  Widget roundedButton(
      String buttonLabel, EdgeInsets margin, Color bgColor, Color textColor) {
    return Container(
      margin: margin,
      padding: EdgeInsets.all(15.0),
      alignment: FractionalOffset.center,
      decoration: new BoxDecoration(
        color: bgColor,
        borderRadius: new BorderRadius.all(const Radius.circular(100.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: const Color(0xFF696969),
            offset: Offset(0.5, 0.5),
            blurRadius: 0.001,
          ),
        ],
      ),
      child: Text(
        buttonLabel,
        style: new TextStyle(
            color: textColor, fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
