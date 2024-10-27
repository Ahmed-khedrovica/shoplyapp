import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/core/constants/constants.dart';
import 'package:stylish_app/modules/auth/auth_cubit/auth_cubit.dart';
import 'package:stylish_app/modules/get_start/get_start_page.dart';

import '../Widgets/custom_form_field.dart';
import '../Widgets/custom_icon_page.dart';
import '../Widgets/custom_pass_form_field.dart';

class LoginScreenD extends StatelessWidget {
  const LoginScreenD({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit cubit = AuthCubit.get(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Create an account Text
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Welcome\nBack!',
                            style: TextStyle(
                              fontSize: 45,
                              fontFamily: "MontserratB",
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        height: MediaQuery.sizeOf(context).height * 0.2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Username/Email field
                            CustomFormField(
                              hintText: 'Username or Email',
                              icon: const Icon(Icons.person),
                              control: cubit.emailControl,
                            ),
                            CustomPassFormField(
                              hintText: 'Password',
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: const Icon(Icons.visibility),
                              passControl: cubit.passControl,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, 'ForgetPassword');
                                  },
                                  child: const Text(
                                    'Forget Password?',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Create Account Button
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        child: ElevatedButton(
                          onPressed: () {
                            cubit.loginService(
                              email: cubit.emailControl.text,
                              pass: cubit.passControl.text,
                            );

                            Navigator.pushNamed(
                                context, GetStartPage.routeName);
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
                            'Login',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),

                      // OR Continue with
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('- OR Continue with -'),
                        ],
                      ),

                      // Social Media buttons
                      Container(
                        width: MediaQuery.sizeOf(context).width,
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
                      const SizedBox(height: 20),
                      // Already have an account? Login
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Create An Account'),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'SignUpScreen');
                            },
                            child: const Text(
                              'Sign Up',
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
