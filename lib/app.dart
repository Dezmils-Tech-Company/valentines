// app.dart
// Root widget that defines theme and navigation for the Valentine’s Surprise app.
// Uses onGenerateRoute for flexible, error-free routing.

import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'theme/app_theme.dart';

// Import all pages
import 'pages/splash/splash_page.dart';
import 'pages/home/home_page.dart';
import 'pages/love_story/love_story_page.dart';
import 'pages/quiz/quiz_page.dart';
import 'pages/memories/memories_page.dart';
import 'pages/final_surprise/final_surprise_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Valentine's Surprise for Beryl",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.splash,

      // ✅ Centralized route handling
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.splash:
            return MaterialPageRoute(builder: (_) => const SplashPage());
          case AppRoutes.home:
            return MaterialPageRoute(builder: (_) => const HomePage());
          case AppRoutes.loveStory:
            return MaterialPageRoute(builder: (_) => const LoveStoryPage());
          case AppRoutes.quiz:
            return MaterialPageRoute(builder: (_) => const QuizPage());
          case AppRoutes.memories:
            return MaterialPageRoute(builder: (_) => const MemoriesPage());
          case AppRoutes.finalSurprise:
            return MaterialPageRoute(builder: (_) => const FinalSurprisePage());
          default:
            // Fallback: go to splash if route not found
            return MaterialPageRoute(builder: (_) => const SplashPage());
        }
      },
    );
  }
}
