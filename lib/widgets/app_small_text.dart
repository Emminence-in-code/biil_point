import 'package:flutter/material.dart';

class AppSmallText extends StatelessWidget {
  final String text;
  final bool alignCenter;
  const AppSmallText(
      {super.key, required this.text, required this.alignCenter});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignCenter ? TextAlign.center : TextAlign.start,
      style: const TextStyle(fontSize: 12, color: Colors.black38),
    );
  }
}
