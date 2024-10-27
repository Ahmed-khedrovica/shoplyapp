import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.textButton, required this.color});
  final String textButton;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
        textButton,
        style: TextStyle(
          color: color,
          fontSize: 16,
        ),
    );
  }
}
