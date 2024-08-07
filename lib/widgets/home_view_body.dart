import 'package:flutter/material.dart';
import 'package:notly/widgets/note_item.dart';
import 'package:notly/widgets/search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 50,),
          SearchTextField(),
          SizedBox(height: 20,),
          NoteItem(),
        ],
      ),
    );
  }
}