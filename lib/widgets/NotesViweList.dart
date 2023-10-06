import 'package:flutter/material.dart';
import 'package:notesappv2/widgets/Coustom_note_item.dart';

class NotesViweList extends StatelessWidget {
  const NotesViweList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const NoteItem();
    });
  }
}
