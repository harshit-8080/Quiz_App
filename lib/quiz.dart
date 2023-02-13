import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import "package:flutter/material.dart";
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int index;

  Quiz(this.questions, this.answerQuestion, this.index);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[index]['questionText'] as String),
      ...(questions[index]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => answerQuestion(answer['score']), answer['text'] as String);
      }).toList()
    ]);
  }
}
