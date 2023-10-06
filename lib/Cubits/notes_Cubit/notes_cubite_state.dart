// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'notes_cubite_cubit.dart';

@immutable
sealed class NotesCubiteState {}

final class NotesCubiteInitial extends NotesCubiteState {}

class NOTESLoading extends NotesCubiteState {}

class NOTESSuccess extends NotesCubiteState {
  List<NoteModel> notes;
  NOTESSuccess(
    this.notes,
  );
}

class NOTESfailure extends NotesCubiteState {
  final String error_message;
  NOTESfailure(this.error_message);
}
