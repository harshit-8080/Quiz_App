import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleCallback;
  final String answerText;

  Answer(this.handleCallback, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      color: Colors.blue,
      child: ElevatedButton(child: Text(answerText), onPressed: handleCallback),
    );
  }
}
