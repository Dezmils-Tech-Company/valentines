// typewriter_text.dart
// Displays text with typewriter animation.

import 'package:flutter/material.dart';

class TypewriterText extends StatefulWidget {
  final String text;
  final TextStyle textStyle;
  final Duration speed;

  const TypewriterText({
    super.key,
    required this.text,
    required this.textStyle,
    this.speed = const Duration(milliseconds: 100),
  });

  @override
  State<TypewriterText> createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText> {
  String _displayed = "";
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _startTyping();
  }

  void _startTyping() async {
    while (_index < widget.text.length) {
      await Future.delayed(widget.speed);
      setState(() {
        _displayed += widget.text[_index];
        _index++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(_displayed, style: widget.textStyle);
  }
}
