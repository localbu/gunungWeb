import 'package:flutter/material.dart';

class TextJudul extends StatelessWidget {
  final double fontSize;
  final String text;
  final Color color;
  const TextJudul(
      {super.key,
      required this.fontSize,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize, fontWeight: FontWeight.bold, color: color),
        textAlign: TextAlign.start,
      ),
    );
  }
}
