import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Function onTap;
  const AppButton(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap.call(),
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange.shade900),
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
