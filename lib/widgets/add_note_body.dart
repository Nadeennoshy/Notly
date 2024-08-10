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
              showAddDialog(context,'assets/images/x-circle.png','oops! wrong' ,Colors.red, Colors.black, 'Try again..', (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                        return const AddNoteView();
                      }));
              });
            }if(state is AddNoteSuccess){
              showAddDialog(context,'assets/images/success icon component.png','Added Successfully',Colors.green,Colors.green,'Done!',
              (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const HomeView();
                      }));
              });
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              // Navigator.pop(context);
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