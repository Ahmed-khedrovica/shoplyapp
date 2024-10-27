import 'package:flutter/material.dart';
import 'package:stylish_app/modules/shop/ui/widgets/custom_out_lined_with_icon.dart';


class OutlinedIconRow extends StatelessWidget {
  final Icon icon;
  final String label;
  final EdgeInsets? padding;

  const OutlinedIconRow({
    Key? key,
    required this.icon,
    required this.label,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: CustomOutLinedWithIcon(
        icon: icon,
        label: label,
      ),
    );
  }
}
class OutlinedIconRowGroup extends StatelessWidget {
  const OutlinedIconRowGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        OutlinedIconRow(
          icon: Icon(
            Icons.star_outline,
            color: Color(0xFF828282),
            size: 16,
          ),
          label: 'Default',
        ),
        OutlinedIconRow(
          icon: Icon(
            Icons.lock_outline_rounded,
            color: Color(0xFF828282),
            size: 16,
          ),
          label: 'VIP',
          padding: EdgeInsets.symmetric(horizontal: 8.0),
        ),
        OutlinedIconRow(
          icon: Icon(
            Icons.local_shipping_outlined,
            color: Color(0xFF828282),
            size: 16,
          ),
          label: 'Return policy',
        ),
      ],
    );
  }
}