// final_surprise_page.dart
// Dramatic reveal with typewriter effect.

import 'package:flutter/material.dart';
import '../../widgets/typewriter_text.dart';

class FinalSurprisePage extends StatelessWidget {
  const FinalSurprisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pinkAccent, Colors.redAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Beryl… I Love You ❤️",
                    style: TextStyle(fontSize: 32, fontFamily: 'Cursive')),
                SizedBox(height: 40),
                TypewriterText(
                  text:
                      "From the moment I met you, my world changed forever.\n\nYou are my sunshine, my laughter, my peace.\n\nWill you be my Valentine… and so much more? 💍💖",
                  textStyle: TextStyle(fontSize: 20),
                  speed: Duration(milliseconds: 80),
                ),
              ],    
            ),
          ),
        ),
      ),
    );
  }
}
