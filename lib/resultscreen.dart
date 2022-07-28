import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {Key? key, required this.finalScore, required this.resetHandler})
      : super(key: key);

  final int finalScore;
  final Function() resetHandler;

  String get resultText {
    String text;
    if (finalScore > 6) {
      text = 'Good Job!!';
    } else {
      text = 'Try Harder';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: const Text('Reset Poll'),
          ),
        ],
      ),
    );
  }
}
