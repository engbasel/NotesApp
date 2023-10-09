import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesappv2/Comsts.dart';
import 'package:notesappv2/models/note_model.dart';

part 'notes_state.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(NotesInitial());
  Color color = const Color(0xffAC3931);

  addNote(NoteModel note) async {
    note.color = color.value;

    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFai1ure(e.toString()));
    }
  }
}
