// home_page.dart
// Welcomes Beryl with floating hearts and a button to start the journey.

import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';
import '../../widgets/animated_heart.dart';
import '../../widgets/love_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const AnimatedHeartBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Hi Beryl Im Ezra here ❤️",
                  style: TextStyle(fontSize: 32, fontFamily: 'Cursive')),
              const SizedBox(height: 20),
              const Text(
                "You make my world brighter every day.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 40),
              LoveButton(
                text: "Can I tell You Something?...💌",
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.loveStory),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
