import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesappv2/Cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notesappv2/models/note_model.dart';
import 'package:notesappv2/widgets/ColorsListviwe.dart';
import 'package:notesappv2/widgets/CoustomBottom.dart';
import 'package:notesappv2/widgets/CoustomTextFiled.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  AutovalidateMode autovalidat = AutovalidateMode.disabled;
  String? Title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      autovalidateMode: autovalidat,
      child: Column(
        children: [
          const SizedBox(height: 15),
          const Text(
            'Note',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(
            color: Colors.white,
            thickness: 1,
            endIndent: 150,
            // height: 5,
            indent: 150,
          ),
          const SizedBox(height: 15),
          CustomTextField(
            onsaved: (value) {
              Title = value;
            },
            label: 'Title',
            hintText: 'Title',
            maxLines: 1,
          ),
          const SizedBox(height: 30),
          CustomTextField(
            onsaved: (value) {
              subTitle = value;
            },
            label: 'content',
            hintText: 'content',
            maxLines: 10,
          ),
          const SizedBox(height: 30),
          const ColorsListView(),
          const SizedBox(height: 30),
          BlocBuilder<AddNotesCubit, AddNoteState>(
            builder: (context, state) {
              return CoustomButton(
                isloading: state is AddNoteLoading ? true : false,
                text: 'save',
                ontap: () {
                  if (_formkey.currentState!.validate()) {
                    _formkey.currentState!.save();
                    var TimeNow = DateTime.now();
                    var FotmatedCrrentDate =
                        DateFormat('dd-mm-yyyy').format(TimeNow);
                    var note = NoteModel(
                      title: Title!,
                      subTitle: subTitle!,
                      date: FotmatedCrrentDate,
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNote(note);

                    print('===========Form key stat=============');
                    print(_formkey.currentState.toString());
                    print('===========Form key=============');
                    print(_formkey.toString());
                  } else {
                    autovalidat = AutovalidateMode.always;
                    print('===========No Data =============');

                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
