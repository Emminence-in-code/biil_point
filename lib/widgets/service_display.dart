import 'package:flutter/material.dart';

class DisplayBox extends StatelessWidget {
  const DisplayBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 75,
      // First container (frame)
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1), // frame border
        borderRadius: BorderRadius.circular(10), // frame rounded corners
      ),
      child: Container(
        // Second container (image container)
        margin: const EdgeInsets.all(6), // space between frame and image
        child: Image.asset(
          '',
          errorBuilder: (context, error, stackTrace) => Container(
            color: Colors.black,
          ),
        ), // replace with your image
      ),
    );
  }
}
