import 'package:flutter/material.dart';
import 'package:notly/cubits/add_note/add_note_cubit.dart';
import 'package:notly/cubits/notes_cubit/notes_cubit.dart';
import 'package:notly/views/add_note_view.dart';
import 'package:notly/views/home_view.dart';
import 'package:notly/widgets/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notly/widgets/show_add_dialog.dart';

class AddNoteBody extends StatelessWidget {
  const AddNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if(state is AddNoteFailure){
              showAddDialog(context,content:'There was an error',img:'assets/images/x-circle.png',title: 'oops! wrong' ,buttonColor:Colors.red, textColor: Colors.black, buttonText:'Try again..',onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                        return const AddNoteView();
                      }));
              });
            }if(state is AddNoteSuccess){
              showAddDialog(context,content:'your note is added successfully',img: 'assets/images/success icon component.png',title:'Success',textColor:Colors.green,buttonColor:Colors.green,buttonText: 'Done!',
              onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const HomeView();
                      }));
              });
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            }
          },
          builder: (context, state) {
            return const AddNoteForm();
          },
        ),
      ),
    );
  }

}