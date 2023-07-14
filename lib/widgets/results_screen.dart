import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.onRestartQuiz,
    required this.chosenAnswers,
  });

  final void Function() onRestartQuiz;

  final List<String> chosenAnswers;

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
            const Text('List of answers',
                style: TextStyle(color: Colors.white)),
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
