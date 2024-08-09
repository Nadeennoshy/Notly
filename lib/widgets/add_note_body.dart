import 'package:flutter/material.dart';
import 'package:notly/cubits/add_note/add_note_cubit.dart';
import 'package:notly/widgets/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              print(state.errorMsg);
            }if(state is AddNoteSuccess){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  content: Text('Added Successfully'),
                );
              });
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
