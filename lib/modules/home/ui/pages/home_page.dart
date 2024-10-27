import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../product_cubit/product_cubit.dart';
import '../widgets/build_deal_of_the_day.dart';
import '../widgets/build_product_categories.dart';
import '../widgets/build_product_list.dart';
import '../widgets/build_sorting_bar.dart';
import '../widgets/build_special_offers.dart';
import '../widgets/build_sponserd_section.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_hot_sales.dart';
import '../widgets/custom_page_view.dart';
import '../widgets/custom_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = 'home_page';
  @override
  Widget build(BuildContext context) {
    ProductCubit cubit = ProductCubit.get(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFDFDFD),
        appBar: const CustomAppBar(),
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    CustomSearchBar(
                      searchController: cubit.searchController,
                      onChanged: (value) {
                        cubit.filterProducts(value);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const BuildSortingBar(),
                    const SizedBox(
                      height: 16,
                    ),
                    BuildProductCategories(
                      isLoading: cubit.isLoading,
                      categories: cubit.filteredProducts,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CustomPageView(),
                    const SizedBox(
                      height: 16,
                    ),
                    const BuildDealOfTheDay(
                      title: 'Deal of the Day',
                      subtitle: '22h 55m 20s remaining ',
                      icon: Icons.alarm,
                      color: Color(0xFF4392F9),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    BuildProductList(
                      isLoading: cubit.isLoading,
                      products: cubit.filteredProducts,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Image.asset('assets/images/Special_offers.png'),
                    const SizedBox(
                      height: 16,
                    ),
                    const BuildSpecialOffers(),
                    const SizedBox(
                      height: 16,
                    ),
                    const BuildDealOfTheDay(
                      title: 'Trending Products',
                      subtitle: 'Last Date 29/02/22',
                      icon: Icons.trending_up_rounded,
                      color: Color(0xFFFD6E87),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    BuildProductList(
                      isLoading: cubit.isLoading,
                      products: cubit.filteredProducts,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CustomHotSales(),
                    const SizedBox(
                      height: 16,
                    ),
                    const BuildSponserdSection(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
