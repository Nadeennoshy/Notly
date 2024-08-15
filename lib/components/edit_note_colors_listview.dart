import 'package:flutter/material.dart';
import 'package:notly/constants.dart';
import 'package:notly/models/note_model.dart';
import 'package:notly/widgets/color_item.dart';

class EditNoteColorsListview extends StatefulWidget {
  const EditNoteColorsListview({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorsListview> createState() => _EditNoteColorsListviewState();
}

class _EditNoteColorsListviewState extends State<EditNoteColorsListview> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = kColors.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex == index ? true : false,
                  color: kColors[index],
                ),
              ),
            );
          }),
    );
  }
}
