import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/themes/font_weight_helper.dart';
import 'package:stylish_app/modules/home/data/models/product_model.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({super.key, required this.productItem});

  final ProductModel productItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "₹2,999",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeightHelper.regular,
            color: const Color(0xFF808488),
            decoration: TextDecoration.lineThrough,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '${productItem.price}',
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeightHelper.medium,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          "50% Off",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeightHelper.semiBold,
            color: const Color(0xFFFA7189),
          ),
        ),
      ],
    );
  }
}