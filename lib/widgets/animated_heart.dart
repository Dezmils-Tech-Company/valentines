// animated_heart.dart
// Ultra-slow floating hearts background (like gentle snowfall).

import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedHeartBackground extends StatefulWidget {
  const AnimatedHeartBackground({super.key});

  @override
  State<AnimatedHeartBackground> createState() =>
      _AnimatedHeartBackgroundState();
}

class _AnimatedHeartBackgroundState extends State<AnimatedHeartBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    // ✅ Extremely slow animation (120 seconds for a full cycle)
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return CustomPaint(
          painter: HeartPainter(_controller.value, _random),
          child: Container(),
        );
      },
    );
  }
}

class HeartPainter extends CustomPainter {
  final double progress;
  final Random random;

  HeartPainter(this.progress, this.random);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.pinkAccent.withValues(alpha: 50);

    for (int i = 0; i < 15; i++) {
      final x = random.nextDouble() * size.width;
      // ✅ Hearts fall very slowly (progress * size.height * 0.2)
      final y = (progress * size.height * 0.2 + i * 80) % size.height;

      final heartPath = _createHeartPath(x, y, 14); // slightly larger hearts
      canvas.drawPath(heartPath, paint);
    }
  }

  Path _createHeartPath(double x, double y, double size) {
    final Path path = Path();
    path.moveTo(x, y);

    // Left curve
    path.cubicTo(
      x - size, y - size,
      x - size * 1.5, y + size / 2,
      x, y + size,
    );

    // Right curve
    path.cubicTo(
      x + size * 1.5, y + size / 2,
      x + size, y - size,
      x, y,
    );

    return path;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
