import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';

class BuildSpecialOffers extends StatelessWidget {
  const BuildSpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 171,
      child: Stack(
        children: [
          Positioned(top: 8, child: Image.asset('assets/images/stats.png')),
          Positioned(
            child: Container(
              width: 11,
              height: 171,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFEFAD18),
                    Color(0xFFF8D7B4),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ),
          Positioned(
            top: 32,
            left: 16,
            child: Image.asset(
              width: 144,
              height: 108,
              'assets/images/heel.png',
            ),
          ),
          Positioned(
            top: 43,
            left: 164,
            child: Column(
              children: [
                Text(
                  'Flat and Heels',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeightHelper.medium,
                    fontSize: 16.0,
                    color: const Color(0xFF232327),
                  ),
                ),
                Text(
                  'Stand a chance to get rewarded',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeightHelper.regular,
                    fontSize: 10,
                    color: const Color(0xFF232327),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 78,
            left: 235,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF83758),
                alignment: Alignment.center,
                minimumSize: const Size(92, 26),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 16,
              ),
              label: Text(
                'Visit Now',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeightHelper.medium,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              iconAlignment: IconAlignment.end,
            ),
          ),
        ],
      ),
    );
  }
}
