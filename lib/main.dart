import 'package:flutter/material.dart';
import 'package:notesappv2/Screens/HomeScreen.dart';

void main(List<String> args) {
  runApp(const notesAppv2());
}

class notesAppv2 extends StatelessWidget {
  const notesAppv2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {},
    );
  }
}
