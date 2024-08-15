import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notly/cubits/notes_cubit/notes_cubit.dart';
import 'package:notly/models/note_model.dart';
import 'package:notly/widgets/note_item.dart';

class SearchGridView extends StatelessWidget {
  const SearchGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> filteredNoteList =
              BlocProvider.of<NotesCubit>(context).filteredNoteList!;
        return GridView.builder(
          itemCount: filteredNoteList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 15),
          itemBuilder: (context, index) {
              return NoteItem(
                note: filteredNoteList[index],
              );
            
          },
        );
      },
    );
  }
}
