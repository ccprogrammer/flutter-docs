import 'package:flutter/material.dart';

SnackBarCommon(context, {String? text, TextStyle? style, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: Duration(milliseconds: 2000),
    backgroundColor: color ?? Colors.blue,
    behavior: SnackBarBehavior.floating,
    content: Text(
      text ?? 'Set your title',
      textAlign: TextAlign.center,
      style: style ?? null,
    ),
  ));
}
