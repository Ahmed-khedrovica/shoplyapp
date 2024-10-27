import 'package:flutter/material.dart';
import 'package:stylish_app/modules/home/data/models/product_model.dart';
import 'package:stylish_app/modules/home/ui/widgets/custom_page_view.dart';
import 'package:stylish_app/modules/shop/ui/widgets/build_product_pic.dart';

class ProductImageSection extends StatelessWidget {
  const ProductImageSection({super.key, required this.productItem});

  final ProductModel productItem;

  @override
  Widget build(BuildContext context) {
    return CustomPageView(
      children: BuildProductPic(image: productItem.image!),
    );
  }
}