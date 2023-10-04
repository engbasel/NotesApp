import 'package:flutter/material.dart';
import 'package:notesappv2/Comsts.dart';
import 'package:notesappv2/models/note_model.dart';
import 'package:notesappv2/viwes/Notes_viwe.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const notesAppv2());
}

class notesAppv2 extends StatelessWidget {
  const notesAppv2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const Notes_viwe(),
      routes: const {},
    );
  }
}
