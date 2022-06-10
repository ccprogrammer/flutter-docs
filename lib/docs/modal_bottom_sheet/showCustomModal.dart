import 'package:flutter/material.dart';

void showModal({
  double elevation = 1,
  required BuildContext context,
  required Widget modalContent,
}) {
  showModalBottomSheet(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            modalContent,
          ],
        );
      });
}

void showCustomModal({
  double elevation = 1,
  required BuildContext context,
}) {
  showModalBottomSheet(
    elevation: elevation,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    backgroundColor: Colors.white,
    context: context,
    builder: (context) => Wrap(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Top Line
            Container(
              margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
              width: 28,
              height: 4,
              decoration: BoxDecoration(
                color: Color(0xffE5E5E5),
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            // Sheet Title
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Text(
                  'Choose Language / Pilih Bahasa',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            // Sheet Subtitle
            Container(
              margin: EdgeInsets.fromLTRB(24, 12, 24, 0),
              child: Text(
                'Which language do you prefer? / Bahasa mana yang Anda sukai?',
                style: TextStyle(
                  fontSize: 13,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            // Sheet Button 1
            Container(
              margin: EdgeInsets.fromLTRB(24, 24, 24, 0),
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0),
                child: Text(
                  'Lanjutkan menggunakan bahasa Indonesia',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),

            // Sheet Button 2
            Container(
              margin: EdgeInsets.fromLTRB(24, 12, 24, 24),
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0),
                child: Text(
                  'Continue in English',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
