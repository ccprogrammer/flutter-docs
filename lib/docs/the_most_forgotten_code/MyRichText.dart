import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Widget MyRichText() {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text:
              'Tunjukkan kode ini kepada kontraktor Anda. Kode akan diperbarui setiap 5 menit sekali. ',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        TextSpan(
          text: 'Pelajari lebih lanjut',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          recognizer: TapGestureRecognizer()..onTap = () => print('click'),
        ),
      ],
    ),
  );
}
