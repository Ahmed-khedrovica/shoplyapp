import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/themes/font_weight_helper.dart';
import '../home/ui/widgets/custom_bottom_nav_bar.dart';

class GetStartPage extends StatelessWidget {
  const GetStartPage({super.key});
  static const String routeName = 'get_start_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/get_start.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Container(
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image:
          //           AssetImage('assets//images/get_start.jpg'), // ضع الصورة هنا
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0x00000000),
                  const Color(0xff000000).withOpacity(0.63),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.55, 1.0],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  'You want Authentic, here you go!',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeightHelper.semiBold,
                    fontSize: 34,
                    letterSpacing: 0.01,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Find it here, buy it now!',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, CustomBottomNavBar.routeName);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF83758),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                ),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeightHelper.semiBold,
                    fontSize: 23,
                  ),
                ),
              ),
              const SizedBox(height: 34),
            ],
          ),
        ],
      ),
    );
  }
}
