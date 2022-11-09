import 'package:flutter/material.dart';

Future showAlertDialog({
    required BuildContext context,
    text = 'dialog label',
    icon = Icons.warning,
    String titleLeft = 'No',
    String titleRight = 'Yes',
    Function? onClose,
    Function? onYes,
    Function? onNo,
  }) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 48,
                  color: MyTheme.colorRed,
                ),
                const SizedBox(height: 24),
                Text(
                  text,
                  style: const TextStyle(),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          onNo != null ? onNo() : null;
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyTheme.colorCyan,
                        ),
                        child: Text(titleLeft),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          onYes != null ? onYes() : null;
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyTheme.colorRed,
                        ),
                        child: Text(titleRight),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }).then((value) => onClose != null ? onClose() : null);
  }
