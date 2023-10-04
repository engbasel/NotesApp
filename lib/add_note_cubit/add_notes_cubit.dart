import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesappv2/Comsts.dart';
import 'package:notesappv2/models/note_model.dart';

part 'notes_state.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(NotesInitial());

  addNote(NoteModel note) async {
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
