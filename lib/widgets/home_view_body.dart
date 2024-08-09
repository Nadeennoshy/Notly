import 'package:flutter/material.dart';
import 'package:notly/widgets/add_note_widget.dart';
import 'package:notly/widgets/note_item.dart';
import 'package:notly/widgets/search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          const SearchTextField(),
          Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 15),
              itemBuilder: (context,index){
                if(index == 0){
                  return const AddNoteWidget();
                }else{
                  return const NoteItem();
                }
                
              },),
          )
        ],
      ),
    );
  }
}