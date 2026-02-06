// love_button.dart
// Reusable romantic button.

import 'package:flutter/material.dart';

class LoveButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LoveButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pinkAccent,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onPressed,
      child: Text(text,
          style: const TextStyle(fontSize: 18, fontFamily: 'Cursive')),
    );
  }
}
