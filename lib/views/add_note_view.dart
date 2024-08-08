import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notly/widgets/colors_list_view.dart';
import 'package:notly/widgets/custom_text_field.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: ListView(
          children: const [
            SizedBox(height: 70,),
            CustomTextField(hintText: 'Enter Title'),
            SizedBox(height: 15,),
            CustomTextField(hintText: 'Details',maxLines: 6,),
            SizedBox(height: 20,),
            ColorsListView(),
          ],
         ),
       ),
    );
  }
}