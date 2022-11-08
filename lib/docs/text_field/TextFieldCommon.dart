import 'dart:async';

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      this.hintText = '',
      required this.onChangeListener,
      this.controller,
      this.obscureText = false})
      : super(key: key);
  final String hintText;
  final Function onChangeListener;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Timer? _debounce;

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: widget.controller,
              obscureText: widget.obscureText ? isObscure : false,
              decoration: InputDecoration.collapsed(
                hintText: widget.hintText,
              ),
              onChanged: (value) {
                if (_debounce?.isActive ?? false) _debounce!.cancel();
                _debounce = Timer(const Duration(milliseconds: 800), () {
                  widget.onChangeListener(value);
                });
              },
            ),
          ),
          widget.obscureText
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: Icon(
                    isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
