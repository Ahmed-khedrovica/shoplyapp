import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_app/core/themes/font_weight_helper.dart';
import 'package:stylish_app/modules/shop/ui/widgets/custom_out_lined_with_icon.dart';

class CustomOutlinedIconButton extends StatelessWidget {
  final String label;
  final Icon icon;
  final Size size;
  final Color color;
  final TextStyle labelStyle;

  const CustomOutlinedIconButton({
    super.key,
    required this.label,
    required this.icon,
    this.size = const Size(175, 45),
    this.color = const Color(0xFFD9D9D9),
    required this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return CustomOutLinedWithIcon(
      size: size,
      color: color,
      label: label,
      labelStyle: labelStyle,
      icon: icon,
    );
  }
}

class OutlinedIconButtonRow extends StatelessWidget {
  const OutlinedIconButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomOutlinedIconButton(
          label: 'View Similar',
          icon: const Icon(
            Icons.remove_red_eye_outlined,
            color: Color(0xFF232327),
            size: 20,
          ),
          labelStyle: GoogleFonts.montserrat(
            fontWeight: FontWeightHelper.medium,
            fontSize: 13,
            color: Colors.black,
          ),
        ),
        CustomOutlinedIconButton(
          label: 'Add to Compare',
          icon: const Icon(
            Icons.compare_arrows_outlined,
            color: Color(0xFF232327),
            size: 20,
          ),
          labelStyle: GoogleFonts.montserrat(
            fontWeight: FontWeightHelper.medium,
            fontSize: 13,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
