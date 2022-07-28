import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key, required this.answerText, required this.ansPressed})
      : super(key: key);

  final String answerText;
  final Function() ansPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: ansPressed,
        child: Text(answerText),
      ),
    );
  }
}
