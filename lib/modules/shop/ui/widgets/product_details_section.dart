import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/themes/font_weight_helper.dart';
import 'package:stylish_app/modules/home/data/models/product_model.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key, required this.productItem});
  final ProductModel productItem;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Product Details",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeightHelper.medium,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          productItem.description!,
          style: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeightHelper.regular,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
