import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../data/models/product_model.dart';
import 'build_product_item.dart';

class BuildProductCategories extends StatelessWidget {
  const BuildProductCategories({super.key, required this.categories, required this.isLoading,});

  final List<ProductModel> categories;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 9,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Skeletonizer(
        enabled: isLoading,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: categories.length,
          itemBuilder: (context, index) => BuildProductItem(
            productImage: categories[index].image!,
            productName: categories[index].title!,
          ),
        ),
      ),
    );
  }
}
