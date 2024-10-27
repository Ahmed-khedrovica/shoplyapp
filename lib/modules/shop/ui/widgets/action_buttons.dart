import 'package:flutter/material.dart';
import 'package:stylish_app/modules/home/data/models/product_model.dart';
import 'package:stylish_app/modules/shop/ui/widgets/custom_button.dart';

import '../../../Cart_Payment/Pages/Check_Out_Screen.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key, required this.productItem});

  final ProductModel productItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onTap: () {},
        ),
        const SizedBox(width: 35),
        CustomButton(
          label: 'Buy Now',
          icon: Icons.shopping_bag_outlined,
          firstColor: const Color(0xFF71F9A9),
          secondColor: const Color(0xFF31B769),
          onTap: () {
            Navigator.pushNamed(context, CheckOutScreen.id,
                arguments: productItem);
          },
        ),
      ],
    );
  }
}
