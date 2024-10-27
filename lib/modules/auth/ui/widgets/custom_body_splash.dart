import 'package:flutter/material.dart';

class CustomBodySplash extends StatelessWidget {
  const CustomBodySplash({super.key, required this.image, required this.text2});
  final String image;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Replace this Container with your image
        Image.asset(
          image,
          height: 300,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 20),
        Text(
          text2,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(
            'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ),
      ],
    );
  }
}
