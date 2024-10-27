import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home/product_cubit/product_cubit.dart';
import '../../../home/ui/widgets/build_sorting_bar.dart';
import '../../../home/ui/widgets/custom_app_bar.dart';
import '../../../home/ui/widgets/custom_search_bar.dart';
import '../widgets/BuildProductList.dart';

class TrendingProductPage extends StatefulWidget {
  const TrendingProductPage({super.key});

  static const String routeName = 'trending_product_page';

  @override
  State<TrendingProductPage> createState() => _TrendingProductPageState();
}

class _TrendingProductPageState extends State<TrendingProductPage> {
  @override
  Widget build(BuildContext context) {
    ProductCubit cubit = ProductCubit.get(context);
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: const CustomAppBar(),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                CustomSearchBar(
                  searchController: cubit.searchController,
                  onChanged: (value) => cubit.filterProducts(value),
                ),
                const SizedBox(
                  height: 20,
                ),
                const BuildSortingBar(),
                const SizedBox(
                  height: 16,
                ),
                BuildproductList(
                  isLoading: cubit.isLoading,
                  products: cubit.filteredProducts,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
