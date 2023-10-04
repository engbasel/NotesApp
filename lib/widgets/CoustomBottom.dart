import 'package:flutter/material.dart';
import 'package:notesappv2/Comsts.dart';

class CoustomButton extends StatelessWidget {
  const CoustomButton({
    super.key,
    required this.text,
    this.ontap,
  });
  final String text;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Kprimarycolor,
        ),
        child: const Center(
          child: Text(
            'save',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
