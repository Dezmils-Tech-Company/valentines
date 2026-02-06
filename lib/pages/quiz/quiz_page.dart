// quiz_page.dart (centered layout)

import 'package:flutter/material.dart';
import '../../models/quiz_question.dart';
import '../../routes/app_routes.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentIndex = 0;

  final questions = [
    QuizQuestion("How well do you know us?", ["Perfectly", "A little"]),
    QuizQuestion("What did I feel when I first saw you?",
        ["Butterflies 💓", "Calmness 🌸"]),
    QuizQuestion("Would you leave your job if I promise to provide for you?",
        ["Of course!", "Maybe…"]),
    QuizQuestion("What are your plans for Valentine 💕",
        ["I'll go to work", "I'll be with you", "i don't know yet"]),
    QuizQuestion("Are you ready for the final surprise?", ["Yes!", "Absolutely!"]),
  ];

  void nextQuestion() {
    if (currentIndex < questions.length - 1) {
      setState(() => currentIndex++);
    } else {
      Navigator.pushNamed(context, AppRoutes.memories);
    }
  }

  @override
  Widget build(BuildContext context) {
    final q = questions[currentIndex];
    return Scaffold(
      appBar: AppBar(title: const Text("Romantic Quiz")),
      body: Center( // ✅ ensures everything is centered
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // ✅ vertical centering
          crossAxisAlignment: CrossAxisAlignment.center, // ✅ horizontal centering
          children: [
            Text(
              q.question,
              textAlign: TextAlign.center, // ✅ center text
              style: const TextStyle(fontSize: 24, fontFamily: 'Cursive'),
            ),
            const SizedBox(height: 30),
            ...q.options.map((opt) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("You chose: $opt 💕")),
                      );
                      nextQuestion();
                    },
                    child: Text(
                      opt,
                      style: const TextStyle(
                          fontSize: 18, color: Colors.white),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
