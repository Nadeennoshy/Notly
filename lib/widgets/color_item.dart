import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key,required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}