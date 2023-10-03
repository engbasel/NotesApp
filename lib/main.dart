import 'package:flutter/material.dart';
import 'package:notesappv2/viwes/Notes_viwe.dart';

void main(List<String> args) {
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
