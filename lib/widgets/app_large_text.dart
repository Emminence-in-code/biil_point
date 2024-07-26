import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  final String text;
  final Color? color;

  const AppLargeText({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 25, color: color, fontWeight: FontWeight.bold),
    );
  }
}
