part of 'notescubite_cubit.dart';

@immutable
// sealed class NotesState {}

abstract class NotesState {}

class NotesCubiteInitial extends NotesState {}

class NotesSuccess extends NotesState {}
