import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hintText,this.maxLines=1});
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade400
        ),
        border: borderDecoration(),
        enabledBorder: borderDecoration(),
        focusedBorder: borderDecoration(),
      ),
    );
  }

  OutlineInputBorder borderDecoration() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.grey.withOpacity(0.8),
        ),
      );
  }
}