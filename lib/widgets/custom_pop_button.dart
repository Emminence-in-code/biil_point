import 'package:flutter/material.dart';

class CustomPopButton extends StatelessWidget {
  const CustomPopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      width: 23,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(7)),
      child: const Icon(
        Icons.arrow_back_ios_new_sharp,
        size: 14,
      ),
    );
  }
}
