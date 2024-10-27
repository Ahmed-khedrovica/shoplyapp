import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';

class BuildDealOfTheDay extends StatelessWidget {
  const BuildDealOfTheDay(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      required this.color});

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeightHelper.medium,
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Icon(
                    icon,
                    size: 16,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    subtitle,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeightHelper.semiBold,
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              // backgroundColor: const Color(0xFFF83758),
              // alignment: Alignment.center,
              minimumSize: const Size(89, 28),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
    );
  }
}
