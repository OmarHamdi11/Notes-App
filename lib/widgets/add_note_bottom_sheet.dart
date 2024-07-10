import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              title: 'Title',
              maxLines: 1,
            ),
            SizedBox(height: 16),
            CustomTextField(
              title: 'Title',
              maxLines: 5,
            ),
            SizedBox(height: 50),
            CustomButton(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
