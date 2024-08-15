import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notly/cubits/notes_cubit/notes_cubit.dart';
import 'package:notly/widgets/search_grid_view.dart';
import 'package:notly/widgets/search_text_field.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
   String? keyword;

  // @override
  // void initState() {
  //   BlocProvider.of<NotesCubit>(context).filteredNoteList =
  //       BlocProvider.of<NotesCubit>(context).notes;
  //   super.initState();
  // }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 50,),
          SearchTextField(
             onChanged: (value) {
                keyword = value;
                BlocProvider.of<NotesCubit>(context)
                    .searchForNote(keyword ?? "");
              },
          ),
          Expanded(child: SearchGridView()),
        ],
      ),
    );
  }
}