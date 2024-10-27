import 'package:flutter/material.dart';
import 'package:stylish_app/modules/auth/ui/widgets/custom_body_splash.dart';
import 'package:stylish_app/modules/auth/ui/widgets/custom_polts.dart';
import 'package:stylish_app/modules/auth/ui/widgets/custom_text_button.dart';
import 'package:stylish_app/modules/auth/ui/widgets/custom_top_splash.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomTopSplash(text1: '2'),
            const CustomBodySplash(
              text2: 'Make Payment',
              image: 'assets/images/Sales consulting-pana 1.png',
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const CustomTextButton(
                          textButton: 'Prev',
                          color: Colors.black12,
                        ),
                      ),
                      const CustomPolts(
                          color: Colors.black12,
                          color2: Colors.black87,
                          color3: Colors.black12),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'S4');
                        },
                        child: const CustomTextButton(
                          textButton: 'Next',
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
