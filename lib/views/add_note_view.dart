import 'package:flutter/material.dart';
import 'package:notly/components/add_note_body.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddNoteBody(),
    );
  }
}
