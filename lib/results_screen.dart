import 'package:flutter/material.dart';
import 'package:question_app/data/questions.dart';
import 'package:question_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chooseAnswers});

  final List<String> chooseAnswers;

  List<Map<String, Object>> getResultData() {
    final List<Map<String, Object>> result = [];

    for(var i = 0; i < chooseAnswers.length; i++) {
      result.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chooseAnswers[i]
        }
      );
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out of Y questions correctly!'),
            SizedBox(height: 30),
            QuestionsSummary(getResultData()),
            SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {},
              child: Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
