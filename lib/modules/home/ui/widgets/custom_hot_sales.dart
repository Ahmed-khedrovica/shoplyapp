import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';

class CustomHotSales extends StatelessWidget {
  const CustomHotSales({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/hot_sales.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'New Arrivals ',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeightHelper.medium,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Summer’ 25 Collections',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeightHelper.regular,
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFF83758),
                    // alignment: Alignment.center,
                    minimumSize: const Size(89, 28),
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
                    'View all',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeightHelper.medium,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  iconAlignment: IconAlignment.end,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
