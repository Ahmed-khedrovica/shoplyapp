import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPolts extends StatelessWidget {
  const CustomPolts({super.key, required this.color, required this.color2, required this.color3});
 final Color color;
 final Color color2;
 final Color color3;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 8,
          color: color,
        ),
        const SizedBox(width: 4),
        Icon(
          Icons.circle,
          size: 8,
          color: color2,
        ),
        const SizedBox(width: 4),
        Icon(
          Icons.circle,
          size: 8,
          color: color3,
        ),
      ],
    );
  }
}
