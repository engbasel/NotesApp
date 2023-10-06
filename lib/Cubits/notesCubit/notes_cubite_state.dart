// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'notescubite_cubit.dart';

sealed class NotesState {}

final class NotesCubiteInitial extends NotesState {}

// class NOTESLoading extends NotesState {}

// class NOTESSuccess extends NotesState {
//   List<NoteModel> notes;
//   NOTESSuccess(
//     this.notes,
//   );
// }

// class NOTESfailure extends NotesState {
//   final String error_message;
//   NOTESfailure(this.error_message);
// }
