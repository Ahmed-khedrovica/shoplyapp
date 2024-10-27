import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../data/models/product_model.dart';
import 'build_product_item_list.dart';

class BuildProductList extends StatelessWidget {
  const BuildProductList(
      {super.key, required this.products, required this.isLoading});

  final List<ProductModel> products;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Skeletonizer(
        enabled: isLoading,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: products.length,
          itemBuilder: (context, index) => BuildProductItemList(
            products: products[index],
          ),
        ),
      ),
    );
  }
}
