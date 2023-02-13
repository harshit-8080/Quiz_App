// ignore_for_file: unused_local_variable

import "package:flutter/material.dart";
import './question.dart';
import './answer.dart';

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
  int _index = 0;
  void _answerQuestion() {
    setState(() {
      _index = _index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      "What is fav color ?",
      "What is fav animal ?",
      "What is fav player ?",
      "What is fav game ?",
      "What is fav city ?"
    ];
    // constructor calling and named arugments
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("My First App")),
            body: Column(children: [
              Question(_questions[_index]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ])));
  }
}
