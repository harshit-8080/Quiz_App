import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function reset;
  Result(this.totalScore, this.reset);

  String get resultOutput {
    return "Score: $totalScore";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(resultOutput,
            style: TextStyle(fontSize: 50), textAlign: TextAlign.center),
        ElevatedButton(child: Text("RESET GAME"), onPressed: reset)
      ],
    ));
  }
}
