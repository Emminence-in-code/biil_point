import 'package:flutter/material.dart';

class QuickActionBox extends StatelessWidget {
  final Icon icon;
  final String description;
  const QuickActionBox(
      {super.key, required this.icon, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 75,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          const SizedBox(height: 25),
          icon,
          const SizedBox(
            height: 8,
          ),
          Text(
            description,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
