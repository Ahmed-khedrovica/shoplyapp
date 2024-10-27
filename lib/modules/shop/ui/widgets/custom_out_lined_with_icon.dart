import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';

class CustomOutLinedWithIcon extends StatelessWidget {
  const CustomOutLinedWithIcon({
    super.key,
    this.icon,
    this.label,
    this.size,
    this.color,
    this.labelStyle,
  });

  final Widget? icon;
  final String? label;
  final Size? size;
  final Color? color;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      iconAlignment: IconAlignment.start,
      style: OutlinedButton.styleFrom(
      
        minimumSize: size ?? const Size(97, 24),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        side: BorderSide(
          color: color ?? const Color(0xFF828282),
        ),
      ),
      icon: icon ??
          const Icon(
            Icons.location_on_outlined,
            color: Color(0xFF828282),
            size: 16,
          ),
      label: Text(
        label ?? 'View all',
        style: labelStyle ??
            GoogleFonts.montserrat(
              fontWeight: FontWeightHelper.medium,
              fontSize: 12,
              color: const Color(0xFF828282),
            ),
      ),
    );
  }
}
