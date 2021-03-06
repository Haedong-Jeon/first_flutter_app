import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;
  Result({this.resultScore, this.restartQuiz});

  String get resultPhrase {
    if (resultScore < 50) {
      return "you are bad!";
    } else if (resultScore < 70) {
      return "you are so-so";
    } else if (resultScore < 80) {
      return "you are good";
    } else {
      return "you are too good";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text('restart quiz!'),
            onPressed: restartQuiz,
          ),
        ],
      ),
    );
  }
}
