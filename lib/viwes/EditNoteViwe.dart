// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notesappv2/models/note_model.dart';
import 'package:notesappv2/widgets/EdditNoteViweBody.dart';

class EditNotsViwe extends StatelessWidget {
  const EditNotsViwe({
    Key? key,
    required this.note,
  }) : super(key: key);

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return editNoteviewbody(
      note: note,
    );
  }
}
