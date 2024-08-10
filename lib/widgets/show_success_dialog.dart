import 'package:flutter/material.dart';

Future<dynamic> showAddDialog(BuildContext context,Color buttonColor,Color textColor,String buttonText,void Function()? onPressed) {
    return showDialog(context: context, builder: (context){
              return AlertDialog(
                iconPadding: EdgeInsets.zero,
                icon: Image.asset('assets/images/success icon component.png',),
                title: Text('Added Successfully',style: TextStyle(color: textColor),),
                actions: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                    ),
                    onPressed: onPressed, child: Text(buttonText,style: const TextStyle(color: Colors.white),))
                ],
              );
            });
  }

