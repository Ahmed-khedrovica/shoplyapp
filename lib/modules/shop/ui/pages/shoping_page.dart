import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/modules/home/data/models/product_model.dart';
import 'package:stylish_app/modules/shop/ui/widgets/action_buttons.dart';
import 'package:stylish_app/modules/shop/ui/widgets/delivery_info.dart';
import 'package:stylish_app/modules/shop/ui/widgets/outlined_icon_button_row.dart';
import 'package:stylish_app/modules/shop/ui/widgets/outlined_icon_row_group%20.dart';
import 'package:stylish_app/modules/shop/ui/widgets/price_section.dart';
import 'package:stylish_app/modules/shop/ui/widgets/product_details_section.dart';
import 'package:stylish_app/modules/shop/ui/widgets/product_info_section.dart';
import 'package:stylish_app/modules/shop/ui/widgets/similar_products_header.dart';
import 'package:stylish_app/modules/shop/ui/widgets/size_selection_section.dart';

import '../../../home/product_cubit/product_cubit.dart';
import '../../../home/ui/widgets/build_product_list.dart';
import '../widgets/product_image_section.dart';

class ShopingPage extends StatelessWidget {
  const ShopingPage({super.key});

  static const String routeName = 'shop_page';

  // final ProductModel productItem = ProductModel();

  @override
  Widget build(BuildContext context) {
    ProductModel productItem =
        ModalRoute.of(context)?.settings.arguments as ProductModel? ??
            ProductModel(
              title: 'Default Product Title',
              category: 'Default Category',
              price: 1000.0,
              description: 'Default Product Description',
              image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
            );
    ProductCubit cubit = ProductCubit.get(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductImageSection(productItem: productItem),
                  const SizedBox(height: 8),
                  SizeSelectionSection(cubit: cubit),
                  const SizedBox(height: 20),
                  ProductInfoSection(productItem: productItem),
                  const SizedBox(height: 20),
                  PriceSection(productItem: productItem),
                  const SizedBox(height: 10),
                  ProductDetailsSection(productItem: productItem),
                  const SizedBox(height: 20),
                  const OutlinedIconRowGroup(),
                  const SizedBox(height: 20),
                  ActionButtons(productItem: productItem),
                  const SizedBox(height: 20),
                  const DeliveryInfo(),
                  const SizedBox(height: 10),
                  const OutlinedIconButtonRow(),
                  const SizedBox(height: 20),
                  const SimilarProductsHeader(),
                  const SizedBox(height: 10),
                  BuildProductList(
                    isLoading: cubit.isLoading,
                    products: cubit.products,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
