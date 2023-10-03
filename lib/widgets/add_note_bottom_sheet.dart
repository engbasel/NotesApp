import 'package:flutter/material.dart';
import 'package:notesappv2/widgets/CoustomBottom.dart';
import 'package:notesappv2/widgets/CoustomTextFiled.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0x0005b3e9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 15),
            Text(
              'Note',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
              endIndent: 150,
              // height: 5,
              indent: 150,
            ),
            SizedBox(height: 15),
            CustomTextField(
              label: 'Title',
              hintText: 'Title',
              maxLines: 1,
            ),
            SizedBox(height: 30),
            CustomTextField(
              label: 'content',
              hintText: 'content',
              maxLines: 10,
            ),
            SizedBox(height: 30),
            CoustomButton(text: 'save'),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
