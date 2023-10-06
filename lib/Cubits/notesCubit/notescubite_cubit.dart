import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesappv2/Comsts.dart';
import 'package:notesappv2/models/note_model.dart';

part 'notes_cubite_state.dart';

class NotesCubite extends Cubit<NotesState> {
  NotesCubite() : super(NotesCubiteInitial());

  List<NoteModel>? notes;
  Fetchallnotes() async {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
