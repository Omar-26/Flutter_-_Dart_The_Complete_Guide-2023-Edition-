import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 2, 0, 64),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: GoogleFonts.paytoneOne(
          color: Colors.white,
        ),
      ),
    );
  }
}
