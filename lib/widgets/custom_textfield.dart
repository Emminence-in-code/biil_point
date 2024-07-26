import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon icon;
  final bool isPassword;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.icon,
      required this.isPassword});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isvisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword == false ? isvisible : !isvisible,
      controller: widget.controller,
      autocorrect: false,
      decoration: InputDecoration(
          errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusColor: Colors.orange.shade900,
          border: InputBorder.none,
          hintText: widget.hintText,
          prefixIconColor: Colors.orange.shade900,
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isvisible = !isvisible;
                    });
                  },
                  child: isvisible
                      ? Icon(
                          Icons.visibility_rounded,
                          size: 20,
                          color: Colors.orange.shade900,
                        )
                      : Icon(
                          Icons.visibility_off_outlined,
                          size: 20,
                          color: Colors.orange.shade900,
                        ))
              : null,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange.shade900),
            borderRadius: BorderRadius.circular(20),
          ),
          prefixIcon: widget.icon),
    );
  }
}
