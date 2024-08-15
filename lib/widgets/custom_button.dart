import 'package:flutter/material.dart';
import 'package:notly/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.buttonName,required this.onPressed,this.isLoading=false});
  final String buttonName;
  final void Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: kPrimaryColor,
         shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0), // Set the border radius
    ),
        
      ),
      onPressed: onPressed, 
      child: isLoading? const CircularProgressIndicator():Text(buttonName,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),));
  }
}