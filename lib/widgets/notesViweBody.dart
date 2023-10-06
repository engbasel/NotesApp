import 'package:flutter/material.dart';
import 'package:notesappv2/widgets/NotesViweList.dart';

class notesviewbody extends StatelessWidget {
  const notesviewbody({
    super.key,
  });

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
              child: const Icon(Icons.search),
            ),
          ),
        ],
        title: const Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const Column(
        children: [SizedBox(height: 15), Expanded(child: NotesViweList())],
      ),
    );
  }
}
