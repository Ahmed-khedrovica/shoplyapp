import 'package:flutter/material.dart';
import 'package:stylish_app/core/constants/constants.dart';

import '../Widgets/custom_form_field.dart';

class ForgetPassword extends StatelessWidget {
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();

  ForgetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Create an account Text
                const Text(
                  'Forget ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Password?',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                    
                const SizedBox(height: 40),
                // Username/Email field
                CustomFormField(
                  hintText: 'Enter your email address',
                  icon: const Icon(Icons.email),
                  control: emailControl,
                ),
                const SizedBox(height: 16),
                // Password field
                const SizedBox(height: 16),
                // Terms of agreement
                const Text(
                  '* We will send you a message to set or reset your new password',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 40),
                // Forget pass button
                ElevatedButton(
                  onPressed: () {
                    // Register logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor, // background color
                    padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 26),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 200),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
