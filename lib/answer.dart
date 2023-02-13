import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleCallback;

  Answer(this.handleCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      color: Colors.blue,
      child: ElevatedButton(child: Text("Answer 1"), onPressed: handleCallback),
    );
  }
}
