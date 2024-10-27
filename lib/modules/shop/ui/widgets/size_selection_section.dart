import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/themes/font_weight_helper.dart';
import 'package:stylish_app/modules/home/product_cubit/product_cubit.dart';

class SizeSelectionSection extends StatelessWidget {
  const SizeSelectionSection({super.key, required this.cubit});

  final ProductCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size: ${cubit.sizes[cubit.selectedSizeIndex]} UK",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeightHelper.semiBold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: List.generate(
            cubit.sizes.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: ChoiceChip(
                showCheckmark: false,
                selectedColor: const Color(0xFFFA7189),
                side: const BorderSide(color: Color(0xFFFA7189)),
                label: Text(
                  "${cubit.sizes[index]} UK",
                  style: GoogleFonts.montserrat(
                    fontSize: 11,
                    fontWeight: FontWeightHelper.semiBold,
                    color: cubit.selectedSizeIndex == index ? Colors.white : const Color(0xFFFA7189),
                  ),
                ),
                selected: cubit.selectedSizeIndex == index,
                onSelected: (selected) => cubit.changeSelectedSizeIndex(index),
              ),
            ),
          ),
        ),
      ],
    );
  }
}