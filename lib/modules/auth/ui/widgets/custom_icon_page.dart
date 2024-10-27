import 'package:flutter/material.dart';

class CustomIconPage extends StatelessWidget {
  const CustomIconPage({super.key, required this.iconButton});
final String iconButton;
  @override
  Widget build(BuildContext context) {
    return  IconButton(
      icon: Image.asset(iconButton),
      iconSize: 40,
      onPressed: () {
        // Google login logic
      },
    );
  }
}
