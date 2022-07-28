import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key? key, required this.questionText}) : super(key: key);

  final String questionText;

  // Question.text(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
