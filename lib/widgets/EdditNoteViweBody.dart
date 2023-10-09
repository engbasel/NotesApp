// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesappv2/Cubits/notesCubit/notescubite_cubit.dart';

import 'package:notesappv2/models/note_model.dart';
import 'package:notesappv2/widgets/CoustomTextFiled.dart';

class editNoteviewbody extends StatefulWidget {
  const editNoteviewbody({
    Key? key,
    required this.note,
  }) : super(key: key);

  final NoteModel note;

  @override
  State<editNoteviewbody> createState() => _editNoteviewbodyState();
}

class _editNoteviewbodyState extends State<editNoteviewbody> {
  @override
  String? title, SubTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x0005b3e9),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xfff3b3b3b),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                icon: const Icon(Icons.done),
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = SubTitle ?? widget.note.subTitle;
                  widget.note.save();
                  BlocProvider.of<NotesCubite>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
        title: const Text(
          'Edit Notes',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 150),
            CustomTextField(
              onchage: (value) {
                title = value;
              },
              hintText: 'Title',
              label: 'Title',
              maxLines: 1,
            ),
            const SizedBox(height: 50),
            CustomTextField(
              onchage: (value) {
                SubTitle = value;
              },
              hintText: 'content',
              label: 'content',
              maxLines: 10,
            ),
            const SizedBox(height: 50),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
