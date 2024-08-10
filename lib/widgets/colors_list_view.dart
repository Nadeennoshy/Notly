import 'package:flutter/material.dart';
import 'package:notly/constants.dart';
import 'package:notly/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;
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
          child: GestureDetector(
            onTap: (){
              currentIndex=index;
              setState(() {
                
              });
            },
            child: ColorItem(
              isActive: currentIndex==index?true:false,
              color: kColors[index],),
          ),
        );
      }),
    );
  }
}