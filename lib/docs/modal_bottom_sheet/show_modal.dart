import 'package:flutter/material.dart';

// put this below constructor
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
