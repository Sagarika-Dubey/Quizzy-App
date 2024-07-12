import 'package:flutter/material.dart';
import 'package:quizz_app/flash_list.dart';
import 'package:quizz_app/new_flash.dart';

class FlashHome extends StatefulWidget {
  const FlashHome({super.key});

  @override
  State<FlashHome> createState() => _FlashHomeState();
}

class _FlashHomeState extends State<FlashHome> {
  final List<String> _flashcard = [];

  void _addFlashCard(String flashcard) {
    setState(() {
      _flashcard.add(flashcard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzy- FlashCard'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 51, 50, 50),
          foregroundColor: Colors.white,
        ),
        body: Container(
          color: Color.fromARGB(255, 131, 131, 130),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  NewFlash(addTx: _addFlashCard),
                  SizedBox(
                    height: 20,
                  ),
                  FlashList(flashcard: _flashcard)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
