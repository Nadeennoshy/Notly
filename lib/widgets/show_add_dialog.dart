import 'package:flutter/material.dart';

Future<dynamic> showAddDialog(BuildContext context,{required String content,required String img,required String title,required Color buttonColor,required Color textColor,required String buttonText,void Function()? onPressed}) {
    return showDialog(context: context, builder: (context){
              return AlertDialog(
                iconPadding: EdgeInsets.zero,
                icon: Image.asset(img,),
                title: Text(title,style: TextStyle(color: textColor),),
                content:Text(content,textAlign:TextAlign.center),
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

