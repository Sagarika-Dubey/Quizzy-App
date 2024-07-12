import './result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
} //ctrl+shift+r+e for stateful widget shortcut

class _HomeState extends State<Home> {
  final _questions = const [
    {
      'questionText':
          "What command would you use to compile your Flutter app in release mode?",
      'answers': [
        {'text': 'Flutter --release', 'score': 0},
        {'text': 'Flutter build --release', 'score': 0},
        {'text': 'Flutter run --release', 'score': 10},
        {'text': 'Flutter run \$release', 'score': 0},
      ]
    },
    {
      'questionText':
          "Who developed the Flutter Framework and continues to maintain it today?",
      'answers': [
        {'text': 'Facebook', 'score': 0},
        {'text': 'Microsoft', 'score': 0},
        {'text': 'Google', 'score': 10},
        {'text': ' Oracle', 'score': 0}
      ]
    },
    {
      'questionText':
          "Which programming language is used to build Flutter applications?",
      'answers': [
        {'text': 'Kotlin', 'score': 0},
        {'text': 'Dart', 'score': 10},
        {'text': 'Java', 'score': 0},
        {'text': 'Go', 'score': 0}
      ]
    },

    {
      'questionText': "How many types of widgets are there in Flutter?",
      'answers': [
        {'text': '2', 'score': 10},
        {'text': '6+', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '1', 'score': 0}
      ]
    },

    {
      'questionText':
          "Access to a cloud database through Flutter is available through which service?",
      'answers': [
        {'text': 'SQLite', 'score': 0},
        {'text': 'Firebase Database', 'score': 10},
        {'text': 'NOSQL', 'score': 0},
        {'text': 'MYSQL', 'score': 0}
      ]
    },

    //questions=[] this will work only if questions is a var and not a cont, here as it is constant we cannot assign another value to question, agar var hota to we couls have assign new value and then vo purane wale ko overriden karta.
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    //name instead of result while calling
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("We have more Questions");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizzy- Quiz"),
          backgroundColor: Color.fromARGB(255, 59, 116, 143),
          foregroundColor: Colors.white,
          centerTitle: true,
          toolbarTextStyle:
              const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        // ignore: prefer_const_constructors
        body: Container(
          padding: EdgeInsets.all(20),
          color: Color.fromARGB(255, 127, 172, 209),
          child: Center(
            child: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                  )
                : Result(_totalScore, _resetQuiz),
          ),
        ),
      ),
    );
  }
}
