import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style:
              GoogleFonts.playfairDisplay(textStyle: TextStyle(fontSize: 28)),
          textAlign: TextAlign.center,
        ));
  }
}
