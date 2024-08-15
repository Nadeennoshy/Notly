import 'package:flutter/material.dart';


class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key,required this.onChanged});
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
         onChanged: onChanged,
      cursorColor: const Color(0xffB7B7B7),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search,color: Color(0xffB7B7B7),),
        border: borderDecoration(),
        enabledBorder: borderDecoration(),
        focusedBorder: borderDecoration(),
        hintText: 'Search',
        hintStyle: const TextStyle(
          color: Color(0xffB7B7B7),
        )
      ),
    );
  }

  OutlineInputBorder borderDecoration() {
    return const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffB7B7B7),
        ),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      );
  }
}