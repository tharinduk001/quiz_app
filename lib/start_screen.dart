import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 250,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 30),
        Text(
          "Learn flutter the fun way",
          style: GoogleFonts.abhayaLibre(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                side: BorderSide.none,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5)),
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: startQuiz,
            label: const Text(
              "Start Quiz",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
