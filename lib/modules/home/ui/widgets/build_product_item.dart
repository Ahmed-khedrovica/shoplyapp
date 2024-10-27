import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/themes/font_weight_helper.dart';

class BuildProductItem extends StatelessWidget {
  const BuildProductItem(
      {super.key, required this.productImage, required this.productName});

  final String productImage;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 75,
      width: 56,
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              productImage,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            productName,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeightHelper.regular,
              fontSize: 10,
              color: const Color(0xFF21003D),
            ),
          )
        ],
      ),
    );
  }
}
