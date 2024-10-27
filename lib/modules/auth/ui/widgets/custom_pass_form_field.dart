import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPassFormField extends StatelessWidget {
  const CustomPassFormField({super.key, required this.hintText, required this.prefixIcon, required this.suffixIcon, required this.passControl});
final String hintText;
final Icon prefixIcon;
final Icon suffixIcon;
final TextEditingController passControl;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passControl,
      obscureText: true,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: IconButton(
          icon: suffixIcon,
          onPressed: () {
              // Logic to toggle password visibility
          },
        ),
      ),
    );
  }
}
