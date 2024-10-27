import 'package:flutter/material.dart';
import 'package:stylish_app/modules/auth/ui/widgets/custom_body_splash.dart';
import 'package:stylish_app/modules/auth/ui/widgets/custom_polts.dart';
import 'package:stylish_app/modules/auth/ui/widgets/custom_text_button.dart';
import 'package:stylish_app/modules/auth/ui/widgets/custom_top_splash.dart';

class SplashScreen4 extends StatelessWidget {
  const SplashScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomTopSplash(text1: '3'),
            const CustomBodySplash(
              text2: 'Get Your Order',
              image: 'assets/images/Shopping bag-rafiki 1.png',
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
                            textButton: 'Prev', color: Colors.black12),
                      ),

                      const CustomPolts(
                        color: Colors.black12,
                        color2: Colors.black12,
                        color3: Colors.black87,
                      ),

                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'SignUpScreen');
                          },
                          child: const CustomTextButton(
                            textButton: 'Get Started',
                            color: Colors.red,
                          )), // Still Navigaate
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
