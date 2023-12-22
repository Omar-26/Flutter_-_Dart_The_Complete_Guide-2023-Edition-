import 'package:flutter/material.dart';
// import 'package:quiz_app/quiz.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You Answered X out of Y Correctly!'),
            const SizedBox(height: 30),
            const Text('List of Answers'),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                // activeScreen = 'start-screen';
              },
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
