import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title, this.maxLines = 1});

  final String title;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: title,
        border: buildMethod(),
        enabledBorder: buildMethod(),
        focusedBorder: buildMethod(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildMethod([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
