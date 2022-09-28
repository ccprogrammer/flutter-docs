import 'package:flutter/material.dart';

class ButtonInkWell extends StatelessWidget {
  const ButtonInkWell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 48,
      margin: EdgeInsets.fromLTRB(24, 16, 24, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Text(
              'Next',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
