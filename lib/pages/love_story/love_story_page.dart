// love_story_page.dart (centered layout)

import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';

class LoveStoryPage extends StatelessWidget {
  const LoveStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final story = [
      "I was a techie, lost in code...",
      "Years of being single, waiting...",
      "Then I met you, Beryl 💕",
      "And everything changed forever.",
      "But our story isn't done yet... 😉",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Your Love is Magical ✨ click the purple heart at the bottom to continue")),
      body: Center( // ✅ centers the whole content vertically & horizontally
        child: ListView.builder(
          shrinkWrap: true, // ✅ prevents full screen scroll, keeps content centered
          itemCount: story.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              child: Text(
                story[index],
                textAlign: TextAlign.center, // ✅ centers each line of text
                style: const TextStyle(
                  fontSize: 22,
                  fontFamily: 'Cursive',
                  color: Colors.black87,
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.favorite),
        onPressed: () => Navigator.pushNamed(context, AppRoutes.quiz),
      ),
    );
  }
}
