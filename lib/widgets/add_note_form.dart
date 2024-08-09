import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:notly/cubits/add_note/add_note_cubit.dart';
import 'package:notly/models/note_model.dart';
import 'package:notly/widgets/colors_list_view.dart';
import 'package:notly/widgets/custom_button.dart';
import 'package:notly/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: ListView(
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
          CustomTextField(
            name: 'title',
              onSaved: (value) {
                title = value;
              },
              hintText: 'Enter Title'),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            name: 'details',
            onSaved: (value) {
              subTitle = value;
            },
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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading?true:false,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    NoteModel note = NoteModel(
                        color: Colors.blue.value,
                        date: DateTime.now().day.toString(),
                        subTitle: subTitle!,
                        title: title!);
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                buttonName: 'Add',
              );
            },
          ),
        ],
      ),
    );
  }
}
