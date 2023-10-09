import 'package:flutter/material.dart';
import 'package:notesappv2/Comsts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.onsaved,
      required this.hintText,
      required this.maxLines,
      required this.label});
  final String hintText;
  final String label;
  final int maxLines;

  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value!.isEmpty) {
          return 'required field';
        }
        return null;
      },
      maxLines: maxLines,
      cursorColor: KitemsColor,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(
          color: KitemsColor,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: KitemsColor,
        ),
        border: buildCustomborders(),
        enabledBorder: buildCustomborders(),
        focusedBorder: buildCustomborders(KitemsColor),
      ),
    );
  }
}

OutlineInputBorder buildCustomborders([Color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: Color ?? Colors.white,
    ),
  );
}
