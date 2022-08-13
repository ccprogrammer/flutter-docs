import 'package:flutter/material.dart';

Color ColorFromHex<T>({required String colorHex}) {
  String regColor = colorHex.replaceAll(RegExp(r'#'), '');
  return Color(int.parse('0xFF' + regColor));
}
