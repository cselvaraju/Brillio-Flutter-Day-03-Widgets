import "package:flutter/material.dart";

import './pollquestion.dart';
import './resultscreen.dart';

void main() => runApp(const PollingApp());

class PollingApp extends StatefulWidget {
  const PollingApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PollingAppState();
  }
}

class _PollingAppState extends State<PollingApp> {
  var _currentQuestionIndex = 0;
  var _totalScore = 0;

  void resetPoll() {
    setState(() {
      _currentQuestionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _currentQuestionIndex = _currentQuestionIndex + 1;
    });
    // print('Current question index: $_currentQuestionIndex');
    _totalScore += score;

    print('Total score: $_totalScore');
  }

  var questions = [
    {
      'questionText': 'What is your favourite colour?',
      'answers': [
        {'text': 'Red', 'score': 2},
        {'text': 'Magenta', 'score': 3},
        {'text': 'Pink', 'score': 4},
        {'text': 'Grey', 'score': 1},
      ],
    },
    {
      'questionText': 'Which is your favourite dish?',
      'answers': [
        {'text': 'Palak Paneer', 'score': 4},
        {'text': 'Fish Fry', 'score': 3},
        {'text': 'Tandoori Chicken', 'score': 5},
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polling App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Polling App'),
        ),
        body: _currentQuestionIndex < questions.length
            ? PollQuestion(
                questions: questions,
                currentQuestionIndex: _currentQuestionIndex,
                answerQuestion: _answerQuestion)
            : ResultScreen(finalScore: _totalScore, resetHandler: resetPoll),
      ),
    );
  }
}
