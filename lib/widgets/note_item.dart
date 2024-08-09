import 'package:flutter/material.dart';
import 'package:notly/models/note_model.dart';
import 'package:notly/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key,required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFF8383),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                  title: Text(note.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  subtitle: Text(note.subTitle,
                  style: const TextStyle(
                    fontSize: 16,
                  ),),
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(note.date),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.delete,color: Colors.red,)),
          
                  ],
                ),
            ],
          ),
        ),
        ),
    );
  }
}