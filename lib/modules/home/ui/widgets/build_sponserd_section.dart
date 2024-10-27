import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';

class BuildSponserdSection extends StatelessWidget {
  const BuildSponserdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 407,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sponserd',
            style: GoogleFonts.montserrat(
              fontWeight: FontWeightHelper.medium,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Container(
            height: 354,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/sponser.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'up to 50% Off',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeightHelper.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
