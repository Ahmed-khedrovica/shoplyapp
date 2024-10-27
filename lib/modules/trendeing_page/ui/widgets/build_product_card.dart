import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';
import '../../../home/data/models/product_model.dart';
import '../../../home/ui/widgets/rate_widget.dart';

class BuildProductCard extends StatelessWidget {
  final ProductModel product;

  const BuildProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              product.image!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    // fontSize: screenWidth * 0.04,
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeightHelper.medium,
                  ),
                ),
                Text(
                  product.description!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    // fontSize: screenWidth * 0.04,
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeightHelper.regular,
                  ),
                ),
                Text(
                  '\$${product.price!}',
                  style: GoogleFonts.montserrat(
                    // fontSize: screenWidth * 0.04,
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeightHelper.medium,
                  ),
                ),
                RateWidget(
                  product: product,
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
