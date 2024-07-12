import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SizedBox(
          width: 22,
          child: ElevatedButton(
            child: Text(
              answerText,
              style: GoogleFonts.playfairDisplay(
                  textStyle:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.w500)),
            ),
            onPressed: selectHandler,
            style: ButtonStyle(
              minimumSize: WidgetStateProperty.all(Size(45, 37)),
              backgroundColor:
                  WidgetStateProperty.all<Color>(Colors.transparent),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
            ),
          )),
    );
  }
}
