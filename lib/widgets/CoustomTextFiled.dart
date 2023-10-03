import 'package:flutter/material.dart';
import 'package:notesappv2/Comsts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.maxLines,
      required this.label});
  final String hintText;
  final String label;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        return null;
      },
      maxLines: maxLines,
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(
          color: KPrimaryColor,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: KPrimaryColor,
        ),
        border: buildCustomborders(),
        enabledBorder: buildCustomborders(),
        focusedBorder: buildCustomborders(KPrimaryColor),
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
