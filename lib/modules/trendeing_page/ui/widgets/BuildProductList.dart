import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:stylish_app/modules/shop/ui/pages/shoping_page.dart';

import '../../../Cart_Payment/Pages/Check_Out_Screen.dart';
import '../../../home/data/models/product_model.dart';
import 'build_product_card.dart';

class BuildproductList extends StatelessWidget {
  const BuildproductList(
      {super.key, required this.products, required this.isLoading});

  final List<ProductModel> products;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Skeletonizer(
        enabled: isLoading,
        child: MasonryGridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                ShopingPage.routeName,
                arguments: products[index],
              );
            },
            child: BuildProductCard(
              product: products[index],
            ),
          ),
        ),
      ),
    );
  }
}
