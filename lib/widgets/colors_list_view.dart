import 'package:flutter/material.dart';
import 'package:notly/constants.dart';
import 'package:notly/widgets/color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ColorItem(color: kColors[index],),
        );
      }),
    );
  }
}