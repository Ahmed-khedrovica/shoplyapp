import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';

class BuildSortingBar extends StatelessWidget {
  const BuildSortingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      // width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'All Features',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeightHelper.semiBold,
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 24,
            width: 66,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 16,
                  spreadRadius: 0,
                  offset: const Offset(1, 1),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Text(
                  'Sort',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeightHelper.regular,
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Icon(
                  Icons.sort_by_alpha_rounded,
                  size: 16,
                  color: Colors.black,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 24,
            width: 73,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 16,
                  spreadRadius: 0,
                  offset: const Offset(1, 1),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                Text(
                  'Filter',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeightHelper.regular,
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Icon(
                  Icons.filter_alt_rounded,
                  size: 16,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
