
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/themes/font_weight_helper.dart';

class SimilarProductsHeader extends StatelessWidget {
  const SimilarProductsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Similar Products",
      style: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeightHelper.semiBold,
        color: Colors.black,
      ),
    );
  }
}