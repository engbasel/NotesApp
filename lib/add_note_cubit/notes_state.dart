part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class AddNoteInitia1 extends NotesState {}

class AddNoteLoading extends NotesState {}

class AddNoteSuccess extends NotesState {}

class AddNoteFai1ure extends NotesState {
  final String errMessage;
  AddNoteFai1ure(this.errMessage);
}
