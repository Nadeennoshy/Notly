import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notly/cubits/notes_cubit/notes_cubit.dart';
import 'package:notly/widgets/add_note_widget.dart';
import 'package:notly/widgets/notes_grid_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {

  @override
  void initState(){
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 50,),
          AddNoteWidget(),
          Expanded(
            child: NotesGridView(),
          )
        ],
      ),
    );
  }
}

