import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notly/cubits/notes_cubit/notes_cubit.dart';
import 'package:notly/models/note_model.dart';
import 'package:notly/views/home_view.dart';
import 'package:notly/widgets/custom_button.dart';
import 'package:notly/widgets/custom_text_field.dart';
import 'package:notly/widgets/edit_note_colors_listview.dart';
import 'package:notly/widgets/show_add_dialog.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key,required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title,subTitle;
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
            onChanged: (value){
              title = value;
            },
            name: 'title',
              hintText: widget.note.title),
            const SizedBox(height: 15,),
            CustomTextField(
              onChanged: (value){
                subTitle = value;
              },
              name: 'details',
              hintText: widget.note.subTitle,maxLines: 6,),
            const SizedBox(height: 20,),
            EditNoteColorsListview(note: widget.note),
            const SizedBox(height: 30,),
            CustomButton(buttonName: 'Edit',onPressed: (){
              widget.note.title = title??widget.note.title;
              widget.note.subTitle = subTitle??widget.note.subTitle;
              widget.note.save();
              showAddDialog(context,img:'assets/images/success icon component.png',title: 'Updated Successfully',buttonColor: Colors.green, textColor: Colors.green, buttonText: 'OK!', onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                        return const HomeView();
                      }));
              });
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();

            },),

          ],
         ),
       );
  }
}