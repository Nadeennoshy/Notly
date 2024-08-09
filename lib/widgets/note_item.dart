import 'package:flutter/material.dart';
import 'package:notly/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
              const ListTile(
                contentPadding: EdgeInsets.zero,
                  title: Text('Health',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  subtitle: Text('note desription for note one',
                  style: TextStyle(
                    fontSize: 16,
                  ),),
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('20 May'),
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