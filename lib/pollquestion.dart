import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

class PollQuestion extends StatelessWidget {
  const PollQuestion(
      {Key? key,
      required this.questions,
      required this.currentQuestionIndex,
      required this.answerQuestion})
      : super(key: key);

  final List<Map<String, Object>> questions;
  final int currentQuestionIndex;
  final Function(int) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText:
              questions[currentQuestionIndex]['questionText'].toString(),
        ),
        ...(questions[currentQuestionIndex]['answers']
                as List<Map<String, Object>>)
            .map(
          (ans) => Answer(
            answerText: ans['text'] as String,
            ansPressed: () => answerQuestion(ans['score'] as int),
          ),
        ),
      ],
    );
  }
}
