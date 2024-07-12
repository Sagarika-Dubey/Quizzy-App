import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/flash_home.dart';
import 'package:quizz_app/quiz_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzy',
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quizzy"),
        backgroundColor: Color.fromARGB(255, 59, 143, 115),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) => Container(
          color: Color.fromARGB(255, 64, 158, 127),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome To Quizzy😉 \n What would you like to start with?!",
                style: GoogleFonts.playfairDisplay(
                  textStyle: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height: 20), // add some space between the text and buttons
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Text(
                      "Quiz - Test yourself💯✨",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      minimumSize: Size(double.infinity, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // add some space between the buttons
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FlashHome()),
                      );
                    },
                    child: Text(
                      "Flash Cards- Revise🤓📖",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      minimumSize: Size(double.infinity, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
