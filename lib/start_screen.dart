import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(145, 255, 255, 255),
          ),
          const SizedBox(height: 40),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(
              color: Color.fromARGB(255, 230, 229, 229),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
