import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What language is used in Flutter?',
      'answers': [
        {'text': 'Java', 'score': 0},
        {'text': 'Kotlin', 'score': 1},
        {'text': 'Dart', 'score': 0},
        {'text': 'Python', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is not a programming language',
      'answers': [
        {'text': 'Swift', 'score': 0},
        {'text': 'Ruby', 'score': 0},
        {'text': 'HTML', 'score': 1},
        {'text': 'All of them', 'score': 0},
      ],
    },
    {
      'questionText': 'Which of the following is OOP?',
      'answers': [
        {'text': 'Golang', 'score': 0},
        {'text': 'C++', 'score': 0},
        {'text': 'Ruby', 'score': 0},
        {'text': 'All of them', 'score': 1},
      ],
    },
    {
      'questionText':
          'Which of the following is the first programming language ? ',
      'answers': [
        {'text': 'QBasic', 'score': 0},
        {'text': 'COBOL', 'score': 0},
        {'text': 'Java', 'score': 0},
        {'text': 'Plankalkül', 'score': 1},
      ],
    },
    {
      'questionText':
          'Which of the following is the first programming language ? ',
      'answers': [
        {'text': 'QBasic', 'score': 0},
        {'text': 'COBOL', 'score': 0},
        {'text': 'Java', 'score': 0},
        {'text': 'Plankalkül', 'score': 1},
      ],
    },
    {
      'questionText': 'When was Flutter realsed ? ',
      'answers': [
        {'text': 'May 2015', 'score': 0},
        {'text': 'April 2016', 'score': 0},
        {'text': 'May 2017', 'score': 1},
        {'text': 'Jan 2017', 'score': 0},
      ],
    },
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
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz Time !!',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amberAccent,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
