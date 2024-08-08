import 'package:flutter/material.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 199,
      decoration: BoxDecoration(
        color: Colors.lightGreen[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add),
              Text('Add New'),
            ],
          ),
          const SizedBox(height: 10,),
          Image.asset('assets/images/add note.png'),

        ],
      ),
    );
  }
}