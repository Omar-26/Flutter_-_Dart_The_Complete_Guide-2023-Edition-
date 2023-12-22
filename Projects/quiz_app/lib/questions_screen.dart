import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("Question.....", style: TextStyle(color: Colors.white)),
        const SizedBox(height: 30),
        AnswerButton(answerText: 'answer1', onTap: () {}),
        const SizedBox(height: 30),
        AnswerButton(answerText: 'answer2', onTap: () {}),
        const SizedBox(height: 30),
        AnswerButton(answerText: 'answer3', onTap: () {}),
        const SizedBox(height: 30),
        AnswerButton(answerText: 'answer4', onTap: () {}),
      ]),
    );
  }
}
