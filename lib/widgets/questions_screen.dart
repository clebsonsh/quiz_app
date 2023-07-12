import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question text...',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          AnswerButton(
            answerText: 'Qualé?',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
