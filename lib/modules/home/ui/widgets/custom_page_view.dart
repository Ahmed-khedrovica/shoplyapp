import 'package:flutter/material.dart';
import 'build_offers.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({
    super.key,
    this.children,
  });

  final Widget? children;
  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  PageController pageController = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (value) => setState(() => index = value),
              scrollDirection: Axis.horizontal,
              children: [
                widget.children ?? BuildOffers(),
                widget.children ?? BuildOffers(),
                widget.children ?? BuildOffers(),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIndicator(isActive: index == 0),
              CustomIndicator(isActive: index == 1),
              CustomIndicator(isActive: index == 2),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 9,
      height: 9,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: isActive ? const Color(0XffFFA3B3) : const Color(0XFFDEDBDB),
        shape: BoxShape.circle,
      ),
    );
  }
}


