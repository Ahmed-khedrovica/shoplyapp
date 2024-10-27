import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/themes/font_weight_helper.dart';

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: const Color(0xFFFFCCD5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delivery in",
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeightHelper.semiBold,
              color: Colors.black,
            ),
          ),
          Text(
            "1 Within Hour",
            style: GoogleFonts.montserrat(
              fontSize: 21,
              fontWeight: FontWeightHelper.semiBold,
              color: const Color(0xFF010101),
            ),
          ),
        ],
      ),
    );
  }
}
