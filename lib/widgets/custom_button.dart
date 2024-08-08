import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.buttonName});
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: const Color(0xffFF8383),
         shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Set the border radius
    ),
        
      ),
      onPressed: (){}, 
      child: Text(buttonName,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),));
  }
}