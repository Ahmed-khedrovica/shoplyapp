import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/themes/font_weight_helper.dart';
import 'package:stylish_app/modules/home/data/models/product_model.dart';

class ProductInfoSection extends StatelessWidget {
  const ProductInfoSection({super.key, required this.productItem});

  final ProductModel productItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productItem.title!,
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeightHelper.semiBold,
            color: Colors.black,
          ),
        ),
        Text(
          productItem.category!,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeightHelper.regular,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}