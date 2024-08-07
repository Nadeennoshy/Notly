import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 199,
      decoration: BoxDecoration(
        color: const Color(0xffFF8383),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[ Text('Health',style: TextStyle(fontWeight: FontWeight.bold),),]),
            SizedBox(height: 15,),
            Text('kjhgfdszxfcgvhbjkl,.mnbvcxzaszdfgrtyhujikolkm,njmbhvgcfx'),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[Text('20 May')]),
          ],
        ),
      ),
    );
  }
}