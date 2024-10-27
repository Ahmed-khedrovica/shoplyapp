import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Cart_Payment/Cubit/main_cubit.dart';
import '../Cart_Payment/Cubit/main_state.dart';

class SplashScreen2 extends StatelessWidget {
  SplashScreen2({super.key});

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => mainCubit(),
      child: BlocConsumer<mainCubit, mainState>(
        builder: (context, state) {
          var cubit = mainCubit.get(context);

          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.white,
              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'SignUpScreen');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Skip",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
              leading: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "${cubit.Page1 + 1}/3",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            backgroundColor: Colors.white,
            body: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: PageView(
                      controller: controller,
                      onPageChanged: (index) {
                        cubit.IncPage(Page: index); // Update cubit page
                      },
                      children: [
                        _buildPageContent(
                          imagePath: "assets/images/fashion shop-rafiki 1.png",
                          title: "Choose Products",
                          description:
                              "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                        ),
                        _buildPageContent(
                          imagePath:
                              "assets/images/Sales consulting-pana 1.png",
                          title: "Make Payment",
                          description:
                              "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                        ),
                        _buildPageContent(
                          imagePath: "assets/images/Shopping bag-rafiki 1.png",
                          title: "Get Your Order",
                          description:
                              "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    width: MediaQuery.sizeOf(context).width,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: cubit.Page1 > 0
                                  ? () {
                                      cubit.decPage1();
                                      controller.previousPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    }
                                  : null,
                              child: Text(
                                cubit.Page1 == 0 ? "" : "Prev",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            SmoothPageIndicator(
                              controller: controller,
                              count: 3,
                              effect: ExpandingDotsEffect(
                                activeDotColor: Colors.pink,
                                dotColor: Colors.grey.shade500,
                              ),
                            ),
                            GestureDetector(
                              onTap: cubit.Page1 < 2
                                  ? () {
                                      cubit.IncPage1();
                                      controller.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    }
                                  : () {
                                      Navigator.pushNamed(
                                          context, 'SignUpScreen');
                                    },
                              child: Text(
                                cubit.Page1 == 2 ? "Get Started" : "Next",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: cubit.Page1 == 0
                                      ? Colors.black
                                      : Colors.pink.shade500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }

  Widget _buildPageContent({
    required String imagePath,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            textAlign: TextAlign.center,
            description,
          ),
        ],
      ),
    );
  }
}
