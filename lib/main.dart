import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesappv2/Comsts.dart';
import 'package:notesappv2/add_note_cubit/add_notes_cubit.dart';
import 'package:notesappv2/Simple_Bloc_observer.dart';
import 'package:notesappv2/models/note_model.dart';
import 'package:notesappv2/viwes/Notes_viwe.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main(List<String> args) async {
  Bloc.observer = SimpleBlocobserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const notesAppv2());
}

class notesAppv2 extends StatelessWidget {
  const notesAppv2({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNotesCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const Notes_viwe(),
        routes: const {},
      ),
    );
  }
}
