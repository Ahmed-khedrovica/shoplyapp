import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';
import '../../data/models/product_model.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({
    super.key,
    this.fontSize,
    this.starSize,
    this.color,
    required this.product,
  });
  final double? fontSize;
  final double? starSize;
  final Color? color;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: const Color(0xFFEDB310),
          size: starSize ?? 14,
        ),
        Icon(
          Icons.star,
          color: const Color(0xFFEDB310),
          size: starSize ?? 14,
        ),
        Icon(
          Icons.star,
          color: const Color(0xFFEDB310),
          size: starSize ?? 14,
        ),
        Icon(
          Icons.star,
          color: const Color(0xFFEDB310),
          size: starSize ?? 14,
        ),
        Icon(
          Icons.star,
          color: const Color(0xFFA4A9B3),
          size: starSize ?? 14,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          product.rating!.count.toString(),
          style: GoogleFonts.montserrat(
            fontWeight: FontWeightHelper.regular,
            fontSize: fontSize ?? 10,
            color: color ?? const Color(0xFFA4A9B3),
          ),
        ),
      ],
    );
  }
}
