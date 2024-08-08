import 'package:flutter/material.dart';
import 'package:notly/widgets/color_item.dart';
import 'package:notly/widgets/colors_list_view.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: Padding(
         padding: EdgeInsets.all(8.0),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorsListView(),
          ],
         ),
       ),
    );
  }
}