import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widgets/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.onRestartQuiz,
    required this.chosenAnswers,
  });

  final void Function() onRestartQuiz;

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summaryData.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Results Screen', style: TextStyle(color: Colors.white)),
            const SizedBox(height: 20),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 20),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: onRestartQuiz,
                child: const Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
