import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.label,
    this.icon,
    this.firstColor,
    this.secondColor,
    required this.onTap,
  });

  final String? label;
  final IconData? icon;
  final Color? firstColor;
  final Color? secondColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 136,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              gradient: LinearGradient(
                colors: [
                  firstColor ?? const Color(0xFF3F92FF),
                  secondColor ?? const Color(0xFF0B3689),
                ],
              ),
            ),
            child: Center(
              child: Text(
                label ?? "Go to cart",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeightHelper.medium,
                ),
              ),
            ),
          ),
          Positioned(
            top: -2,
            left: -20,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: const Offset(0, 4),
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: const Offset(0, -4),
                  ),
                ],
                gradient: LinearGradient(
                  colors: [
                    firstColor ?? const Color(0xFF3F92FF),
                    secondColor ?? const Color(0xFF0B3689),
                  ],
                ),
              ),
              child: Icon(
                icon ?? Icons.shopping_cart_outlined,
                color: Colors.white,
                size: 29,
              ),
            ),
          )
        ],
      ),
    );
  }
}
