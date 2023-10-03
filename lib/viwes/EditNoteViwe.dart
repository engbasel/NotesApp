import 'package:flutter/material.dart';
import 'package:notesappv2/widgets/CoustomBottom.dart';
import 'package:notesappv2/widgets/CoustomTextFiled.dart';

class EditNotsviwebody extends StatelessWidget {
  const EditNotsviwebody({super.key});

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
              child: const Icon(Icons.done),
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(height: 150),
            CustomTextField(
              hintText: 'Title',
              label: 'Title',
              maxLines: 1,
            ),
            SizedBox(height: 50),
            CustomTextField(
              hintText: 'content',
              label: 'content',
              maxLines: 10,
            ),
            SizedBox(height: 50),
            CoustomButton(
              text: 'save',
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
