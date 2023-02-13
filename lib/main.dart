// ignore_for_file: unused_local_variable, prefer_const_declarations, prefer_const_constructors

import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

// void main () => runApp(MyApp());
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppStateless();
  }
}

class _MyAppStateless extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What is your fav. color ?",
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 8},
        {'text': 'blue', 'score': 7},
        {'text': 'green', 'score': 1},
      ]
    },
    {
      'questionText': "What is your fav. game ?",
      'answers': [
        {'text': 'cricket', 'score': 20},
        {'text': 'football', 'score': 10},
        {'text': 'baseball', 'score': 5},
        {'text': 'gullu', 'score': 1},
      ]
    },
    {
      'questionText': "What is your fav. city ?",
      'answers': [
        {'text': 'delhi', 'score': 20},
        {'text': 'mumbai', 'score': 80},
        {'text': 'indore', 'score': 70},
        {'text': 'patna', 'score': 10},
      ]
    },
    {
      'questionText': "What is your fav. food ?",
      'answers': [
        {'text': 'chicken', 'score': 100},
        {'text': 'pizza', 'score': 60},
        {'text': 'burger', 'score': 50},
        {'text': 'dosa', 'score': 40},
      ]
    }
  ];

  int _index = 0;
  int _totalScore = 0;
  void answerQuestion(score) {
    setState(() {
      _index = _index + 1;
      _totalScore = _totalScore + score;
    });
  }

  void resetGame() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // constructor calling and named arugments
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("My First App")),
            body: _index < _questions.length
                ? Quiz(_questions, answerQuestion, _index)
                : Result(_totalScore, resetGame)));
  }
}
