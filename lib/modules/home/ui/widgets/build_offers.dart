import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';

class BuildOffers extends StatelessWidget {
  const BuildOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage('assets/images/offers.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: 136,
            height: 111,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '50-40% OFF',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeightHelper.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Now in (product)\nAll colors',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeightHelper.regular,
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    // backgroundColor: const Color(0xFFF83758),
                    // alignment: Alignment.center,
                    minimumSize: const Size(100, 32),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 16,
                  ),
                  label: Text(
                    'Shop Now',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeightHelper.semiBold,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  iconAlignment: IconAlignment.end,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
