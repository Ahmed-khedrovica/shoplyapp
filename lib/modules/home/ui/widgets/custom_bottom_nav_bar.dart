import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/themes/font_weight_helper.dart';
import '../../product_cubit/product_cubit.dart';
import '../pages/home_page.dart';
import '../../../shop/ui/pages/shoping_page.dart';
import '../../../trendeing_page/ui/pages/trendeing_product_page.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});
  static const routeName = 'custom_bottom_nav_bar';

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedPage = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  List<Widget> pages = [
    BlocProvider(
      create: (context) => ProductCubit()..getAllProduct(),
      child: const HomePage(),
    ),
    BlocProvider(
      create: (context) => ProductCubit()..getAllProduct(),
      child: const TrendingProductPage(),
    ),
    BlocProvider(
      create: (context) => ProductCubit()..getAllProduct(),
      child:   ShopingPage(),
    ),
    const Center(
      child: Text('Search Page'),
    ),
    const Center(
      child: Text('Settings Page'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 76,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 1,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(
                  icon: Icons.home_outlined,
                  label: 'Home',
                  index: 0,
                ),
                _buildNavItem(
                  icon: Icons.favorite_border_outlined,
                  label: 'Wishlist',
                  index: 1,
                ),
                const SizedBox(
                  width: 30,
                ), //SizedBox.shrink(),  // Space for the floating button
                _buildNavItem(
                  icon: Icons.search,
                  label: 'Search',
                  index: 3,
                ),
                _buildNavItem(
                  icon: Icons.settings_outlined,
                  label: 'Settings',
                  index: 4,
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              left: MediaQuery.of(context).size.width / 2 - 40,
              child: GestureDetector(
                onTap: () => _onItemTapped(2), // Default action for home button
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 6,
                        offset: const Offset(0, -1),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: selectedPage == 2
                        ? const Color(0xFFEB3030)
                        : Colors.white,
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: selectedPage == 2 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final bool isSelected = selectedPage == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? const Color(0xFFEB3030) : Colors.black,
          ),
          Text(
            label,
            style: GoogleFonts.roboto(
              color: isSelected ? const Color(0xFFEB3030) : Colors.black,
              fontWeight: FontWeightHelper.regular,
              fontSize: 12,
              letterSpacing: 0.4,
            ),
          ),
        ],
      ),
    );
  }
}
