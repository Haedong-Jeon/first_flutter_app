import 'package:first_flutter_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 20},
        {'text': 'green', 'score': 30},
        {'text': 'white', 'score': 40},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'tiger', 'score': 10},
        {'text': 'lion', 'score': 20},
        {'text': 'eagle', 'score': 30},
        {'text': 'dog', 'score': 40},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'tiger', 'score': 10},
        {'text': 'lion', 'score': 20},
        {'text': 'eagle', 'score': 30},
        {'text': 'dog', 'score': 40},
      ],
    },
  ];
  void _answerQuestion(int score) {
    setState(() {
      _questionIdx += 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Flutter App"),
        ),
        body: _questionIdx < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIdx: _questionIdx,
              )
            : Result(resultScore: _totalScore),
      ),
    );
  }
}
