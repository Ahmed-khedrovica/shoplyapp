import 'package:flutter/material.dart';

class CustomTopSplash extends StatelessWidget {
  const CustomTopSplash({super.key, required this.text1});
 final String text1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(text1, style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              ),
              Text("/3", style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54),
              ),
            ],
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'SignUpScreen');
              },
              child: Text("Skip",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
        ],
      ),
    );
  }
}
