part of 'add_notes_cubit.dart';

@immutable
sealed class AddNoteState {}

final class NotesInitial extends AddNoteState {}

class AddNoteInitia1 extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFai1ure extends AddNoteState {
  final String errMessage;
  AddNoteFai1ure(this.errMessage);
}
