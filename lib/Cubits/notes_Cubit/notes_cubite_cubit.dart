import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notesappv2/models/note_model.dart';

part 'notes_cubite_state.dart';

class NotesCubiteCubit extends Cubit<NotesCubiteState> {
  NotesCubiteCubit() : super(NotesCubiteInitial());
}
