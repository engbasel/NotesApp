import 'package:flutter/material.dart';
import 'package:notesappv2/widgets/add_note_bottom_sheet.dart';
import 'package:notesappv2/widgets/notesViweBody.dart';

class notesViwe extends StatelessWidget {
  const notesViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(16)),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const notesviewbody(),
    );
  }
}
