import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
// We Replaced Var With Widget to make it Less Strict as StartScreen Make The var of type StartScreen so after that we won't be able to assign new widget 'QuestionsScreen' to it
  // Widget? activeScreen;

  // Here we have initState because if we initialized the var activeScreen without init the initialization and the assignment in switchScreen will happen at the same time which is wrong
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

// another method of initializing the var activeScreen and assignment to another screen is the ternary operator and assigning string to the variable
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 2, 0, 64),
                Color.fromARGB(255, 4, 0, 120),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
