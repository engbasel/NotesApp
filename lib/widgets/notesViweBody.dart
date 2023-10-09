import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesappv2/Cubits/notesCubit/notescubite_cubit.dart';
import 'package:notesappv2/widgets/NotesViweList.dart';

class notesviewbody extends StatefulWidget {
  const notesviewbody({
    super.key,
  });

  @override
  State<notesviewbody> createState() => _notesviewbodyState();
}

class _notesviewbodyState extends State<notesviewbody> {
  @override
  initState() {
    BlocProvider.of<NotesCubite>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x0005b3e9),
        elevation: 0,
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(top: 10, right: 10),
        //     child: Container(
        //       width: 50,
        //       height: 50,
        //       decoration: BoxDecoration(
        //         color: const Color(0xfff3b3b3b),
        //         borderRadius: BorderRadius.circular(15),
        //       ),
        //       child: const Icon(Icons.search),
        //     ),
        //   ),
        // ],
        title: const Center(
          child: Text(
            'Notes',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: const Column(
        children: [
          SizedBox(height: 15),
          Expanded(
            child: NotesViweList(),
          ),
        ],
      ),
    );
  }
}
