import 'package:flutter/material.dart';

class Custombutton extends StatefulWidget {
  const Custombutton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.isBorder = false,
    this.borderColor = Colors.black,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
    this.elevation = 0,
    this.isLoading = false,
  }) : super(key: key);
  final String label;
  final Function onPressed;
  final bool isLoading;

  final Color textColor;
  final Color backgroundColor;
  final bool isBorder;
  final Color borderColor;
  final double elevation;

  @override
  State<Custombutton> createState() => _CustombuttonState();
}

class _CustombuttonState extends State<Custombutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          widget.onPressed();
        },
        style: ElevatedButton.styleFrom(
          primary: widget.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          elevation: widget.elevation,
          side: widget.isBorder
              ? BorderSide(
                  color: widget.borderColor,
                  width: 2,
                )
              : null,
        ),
        child: widget.isLoading
            ? SizedBox(
              width: 30,
              height: 30,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  backgroundColor: Colors.grey.withOpacity(0.6),
                ),
              )
            : Text(
                widget.label,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: widget.textColor,
                ),
              ),
      ),
    );
  }
}
