import 'package:flutter/material.dart';

Widget TextFieldCommon2() {
  return Container(
    margin: const EdgeInsets.fromLTRB(16, 30, 16, 0),
    child: const TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        labelText: 'OTP',
        hintText: 'Kode OTP',
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    ),
  );
}
