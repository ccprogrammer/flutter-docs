import 'package:flutter/material.dart';

Future AlertDialogCommon2({
  required BuildContext context,
  text = '',
  icon,
  onClose,
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
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff1C1B1F), width: 3),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  size: 32,
                ),
              ),
              SizedBox(height: 17),
              Container(
                child: Text(
                  text,
                  style: const TextStyle(),
                ),
              ),
              InkWell(
                onTap: () async {
                  Navigator.pop(context);
                  onClose();
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xff1C1B1F),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text(
                    "Tutup",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }).then((value) => onClose());
}
