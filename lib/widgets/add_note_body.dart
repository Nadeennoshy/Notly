import 'package:flutter/material.dart';
import 'package:notly/cubits/add_note/add_note_cubit.dart';
import 'package:notly/widgets/colors_list_view.dart';
import 'package:notly/widgets/custom_button.dart';
import 'package:notly/widgets/custom_text_field.dart';
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
            if(state is AddNoteSuccess){
              showDialog(context: context, builder: (context){
                return const AlertDialog();
              });
            }else if(state is AddNoteFailure){

            }
          },
          builder: (context, state) {
            return ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Add Note',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffFF8383),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextField(hintText: 'Enter Title'),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextField(
                  hintText: 'Details',
                  maxLines: 6,
                ),
                const SizedBox(
                  height: 20,
                ),
                const ColorsListView(),
                const SizedBox(
                  height: 30,
                ),
                state is AddNoteLoading? const CircularProgressIndicator(): const CustomButton(
                  buttonName: 'Add',
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
