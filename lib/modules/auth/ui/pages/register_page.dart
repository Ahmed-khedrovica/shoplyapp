import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/core/constants/constants.dart';
import 'package:stylish_app/modules/auth/auth_cubit/auth_cubit.dart';

import '../Widgets/custom_form_field.dart';
import '../Widgets/custom_icon_page.dart';
import '../Widgets/custom_pass_form_field.dart';
import '../Widgets/select_gender.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    AuthCubit cubit = AuthCubit.get(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Create an account Text
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(alignment: Alignment.centerLeft,
                          child: const Text(
                            'Create an\nAccount!',
                            style: TextStyle(
                              fontFamily: "MontserratB",
                              fontSize: 45,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CustomFormField(
                              hintText: 'Name',
                              icon: const Icon(Icons.person),
                              control: cubit.nameControl,
                            ),
                            CustomFormField(
                              hintText: 'Email',
                              icon: const Icon(Icons.person),
                              control: cubit.emailControl,
                            ),
                            CustomFormField(
                              hintText: 'Phone',
                              icon: const Icon(Icons.phone),
                              control: cubit.phoneControl,
                            ),
                            SelectGender(
                              onGenderSelected: (String value) {
                                setState(() {
                                  cubit.selectedGender = value;
                                });
                              },
                            ),
                            // Password field
                            CustomPassFormField(
                              hintText: 'Password',
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: const Icon(Icons.visibility),
                              passControl: cubit.passControl,
                            ),
                            // Confirm Password field
                            CustomPassFormField(
                              hintText: 'Confirm Password',
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: const Icon(Icons.visibility),
                              passControl: cubit.confirmpassControl,
                            ),
                            // Terms of agreement
                            const Text(
                              'By clicking the Register button, you agree to the public offer',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),

                      // Create Account Button
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        child: ElevatedButton(
                          onPressed: () {
                            cubit.registerService(
                              name: cubit.nameControl.text,
                              phone: cubit.phoneControl.text,
                              gender: cubit.selectedGender,
                              email: cubit.emailControl.text,
                              password: cubit.passControl.text,
                              passwordConfirmation:
                                  cubit.confirmpassControl.text,
                            );
                            Navigator.pushNamed(context, 'LoginScreen');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor, // background color
                            padding: const EdgeInsets.symmetric(
                                horizontal: 100, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            'Create Account',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      // OR Continue with
                      Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('- OR Continue with -'),
                          ],
                        ),
                      ),

                      // Social Media buttons
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconPage(
                              iconButton: 'assets/images/Google.png',
                            ),
                            SizedBox(width: 10),
                            CustomIconPage(
                              iconButton: 'assets/images/Apple1.png',
                            ),
                            SizedBox(width: 10),
                            CustomIconPage(
                              iconButton: 'assets/images/Facebook.png',
                            ),
                          ],
                        ),
                      ),
                      // Already have an account? Login
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('I Already Have an Account'),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'LoginScreen');
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
