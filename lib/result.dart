import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    //getters
    var resultText = " ";
    if (resultScore == 0) {
      resultText = 'You need to improve a lot ';
    } else if (resultScore == 20 || resultScore == 30) {
      resultText = "You did it!!, You have a pretty well knowledge of Flutter";
    } else if (resultScore == 40) {
      resultText = "You did it!!, You are excellent in Flutter Concepts";
    } else if (resultScore == 50) {
      resultText = "You did it!!, You are Awesome in Flutter Concepts";
    } else {
      resultText = "Oppes! Try again";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              resultPhrase,
              style: GoogleFonts.playfairDisplay(
                  textStyle:
                      TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
              textAlign: TextAlign.center,
            ),
            TextButton(
                onPressed: resetHandler,
                child: Text(
                  'Restart Quiz!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ).copyWith(fontFamily: "PlayFairDisplay"),
                )),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizApp()),
                  );
                },
                child: Text(
                  'Go to Home!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ).copyWith(fontFamily: "PlayFairDisplay"),
                ))
          ]),
    );
  }
}
