import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        backgroundColor: const Color(0xFFFDFDFD),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Log1.png',
              width: 35,
              height: 35,
            ),
            const SizedBox(width: 10),
            Text(
              'Stylish',
              style: GoogleFonts.libreCaslonText(
                fontWeight: FontWeightHelper.bold,
                fontSize: 18.0,
                color: const Color(0xFF4392F9),
              ),
            ),
          ],
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          CircleAvatar(
            child: Image.asset('assets/images/avt.png'),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
