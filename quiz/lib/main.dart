import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favourite color?",
      "answers": [
        {
          "text": "Black",
          "score": 10,
        },
        {
          "text": "Red",
          "score": 8,
        },
        {
          "text": "Green",
          "score": 6,
        },
        {
          "text": "White",
          "score": 4,
        },
      ]
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {
          "text": "Rabbit",
          "score": 10,
        },
        {
          "text": "Snake",
          "score": 8,
        },
        {
          "text": "Elephant",
          "score": 6,
        },
        {
          "text": "Lion",
          "score": 4,
        },
      ]
    },
    {
      "questionText": "Who's your favorite instructor?",
      "answers": [
        {
          "text": "Max",
          "score": 1,
        },
        {
          "text": "Max",
          "score": 1,
        },
        {
          "text": "Max",
          "score": 1,
        },
        {
          "text": "Max",
          "score": 1,
        },
      ]
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
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
