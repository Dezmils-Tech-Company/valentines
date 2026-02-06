// memories_page.dart
// Grid of photo memories with captions and tap interaction.

import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';

class MemoriesPage extends StatelessWidget {
  const MemoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ Each memory has a photo + caption
    final memories = [
      {
        "image": "assets/images/memory2.jpeg",
        "caption": "Our first photo together 📷"
      },
      {
        "image": "assets/images/memory4.jpeg",
        "caption": "Sweet late-night chats 💬"
      },
      {
        "image": "assets/images/memory3.jpeg",
        "caption": "I wonder if you really love this motherfucker 😂"
      },
      {
        "image": "assets/images/memory1.jpeg",
        "caption": "Romantic walks 🌙"
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Our Memories")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: memories.length,
        itemBuilder: (context, index) {
          final memory = memories[index];
          return GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Memory: ${memory['caption']} 💖")),
              );
            },
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      child: Image.asset(
                        memory["image"]!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      memory["caption"]!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Cursive',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.favorite),
        onPressed: () =>
            Navigator.pushNamed(context, AppRoutes.finalSurprise),
      ),
    );
  }
}
