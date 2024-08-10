import 'package:flutter/material.dart';
import 'package:notly/models/note_model.dart';
import 'package:notly/widgets/colors_list_view.dart';
import 'package:notly/widgets/custom_button.dart';
import 'package:notly/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key,required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
         padding: const EdgeInsets.all(16.0),
         child: ListView(
          children: [
            const SizedBox(height: 10,),
            const Text('Edit Note',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xffFF8383),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 30,),
          CustomTextField(
            name: 'title',
            onSaved: (value){

            },    
              hintText: 'Enter Title'),
            const SizedBox(height: 15,),
            CustomTextField(
              name: 'details',
              onSaved: (value){

              },
              hintText: 'Details',maxLines: 6,),
            const SizedBox(height: 20,),
            const ColorsListView(),
            const SizedBox(height: 30,),
            CustomButton(buttonName: 'Edit',onPressed: (){},),

          ],
         ),
       );
  }
}