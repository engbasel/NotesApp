import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesappv2/Cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notesappv2/widgets/Add_note_form.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isloading = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(0, 10, 173, 222),
          borderRadius: BorderRadius.circular(16),
        ),
        child: BlocListener<AddNotesCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFai1ure) {
              print('=========================');
              print('failed the exption is ${state.errMessage}');
              print('==========================');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          child: AbsorbPointer(
            absorbing: State is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
