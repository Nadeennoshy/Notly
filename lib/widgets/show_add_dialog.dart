import 'package:flutter/material.dart';

Future<dynamic> showAddDialog(BuildContext context,String img,String title,Color buttonColor,Color textColor,String buttonText,void Function()? onPressed) {
    return showDialog(context: context, builder: (context){
              return AlertDialog(
                iconPadding: EdgeInsets.zero,
                icon: Image.asset(img,),
                title: Text(title,style: TextStyle(color: textColor),),
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

