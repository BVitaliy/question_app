import 'package:flutter/material.dart';
import 'package:question_app/data/questions.dart';
import 'package:question_app/questions_screen.dart';
import 'package:question_app/results_screen.dart';
import 'package:question_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  // Widget? activeScreen;
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
      activeScreen = 'questions-screen';
    });
  }
  
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

  if(activeScreen == 'questions-screen') {
    screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
  }

  if(activeScreen == 'results-screen') {
    screenWidget = ResultsScreen(chooseAnswers: selectedAnswers,);
  }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(199, 64, 5, 147),
                Color.fromARGB(198, 86, 35, 158),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
