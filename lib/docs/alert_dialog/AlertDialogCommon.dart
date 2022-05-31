import 'package:flutter/material.dart';

AlertDialogCommon(context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) => Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ),
              Image.asset(
                'docs_image/checklist-circle.png',
                width: 100,
              ),
              SizedBox(height: 12),
              Text(
                'Thank you',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Rating successfully',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 44,
                width: 154,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Colors.red,
                  ),
                  child: Text(
                    'Close',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ).then(
    (value) => null,
  );
}
