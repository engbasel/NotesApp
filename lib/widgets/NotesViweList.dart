import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesappv2/Cubits/notesCubit/notescubite_cubit.dart';
import 'package:notesappv2/models/note_model.dart';
import 'package:notesappv2/widgets/noteitem.dart';

class NotesViweList extends StatelessWidget {
  const NotesViweList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubite, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubite>(context).notes!;

        return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NoteItem(
                note: notes[index],
              );
            });
      },
    );
  }
}
