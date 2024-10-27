import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/modules/auth/auth_cubit/auth_cubit.dart';
import 'package:stylish_app/modules/home/product_cubit/product_cubit.dart';

import 'modules/Cart_Payment/Pages/Check_Out_Screen.dart';
import 'modules/auth/ui/pages/forget_password.dart';
import 'modules/auth/ui/pages/login_page.dart';
import 'modules/auth/ui/pages/register_page.dart';
import 'modules/get_start/get_start_page.dart';
import 'modules/home/ui/pages/home_page.dart';
import 'modules/home/ui/widgets/custom_bottom_nav_bar.dart';
import 'modules/shop/ui/pages/shoping_page.dart';
import 'modules/splash/Splash_Screen.dart';
import 'modules/splash/Splash_Screen3.dart';
import 'modules/splash/Splash_Screen4.dart';
import 'modules/splash/Splash_screen2.dart';
import 'modules/trendeing_page/ui/pages/trendeing_product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'S1': (context) => const SplashScreen(),
        'S2': (context) => SplashScreen2(),
        'S3': (context) => const SplashScreen3(),
        'S4': (context) => const SplashScreen4(),
        'SignUpScreen': (context) => BlocProvider(
              create: (context) => AuthCubit(),
              child: const SignUpScreen(),
            ),
        'LoginScreen': (context) => BlocProvider(
              create: (context) => AuthCubit(),
              child: const LoginScreenD(),
            ),
        'ForgetPassword': (context) => ForgetPassword(),
        HomePage.routeName: (context) => BlocProvider(
              create: (context) => ProductCubit(),
              child: const HomePage(),
            ),
        TrendingProductPage.routeName: (context) => BlocProvider(
              create: (context) => ProductCubit(),
              child: const TrendingProductPage(),
            ),
        ShopingPage.routeName: (context) => BlocProvider(
              create: (context) => ProductCubit(),
              child: ShopingPage(),
            ),
        CheckOutScreen.id: (context) => const CheckOutScreen(),
        CustomBottomNavBar.routeName: (context) => const CustomBottomNavBar(),
        GetStartPage.routeName: (context) => const GetStartPage(),
      },
      initialRoute: 'S1',
    );
  }
}
