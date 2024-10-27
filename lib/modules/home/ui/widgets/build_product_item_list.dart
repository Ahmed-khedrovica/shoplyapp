import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/models/product_model.dart';
import 'rate_widget.dart';
import '../../../../core/themes/font_weight_helper.dart';

class BuildProductItemList extends StatelessWidget {
  const BuildProductItemList({super.key, required this.products});

  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        // height: 260,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 124,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: NetworkImage(
                    products.image!,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              products.title!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeightHelper.medium,
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              products.description!,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeightHelper.regular,
                fontSize: 10,
                color: Colors.black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              products.price.toString(),
              style: GoogleFonts.montserrat(
                fontWeight: FontWeightHelper.medium,
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  '₹24990',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeightHelper.light,
                    fontSize: 12.0,
                    color: const Color(0xFFBBBBBB),
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '40% off',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeightHelper.medium,
                    fontSize: 12.0,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            RateWidget(
              product: products,
            ),
          ],
        ),
      ),
    );
  }
}
