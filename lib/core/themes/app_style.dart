import 'app_color.dart';
import 'font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleTextStyles {
  static TextStyle font51WhiteBold = GoogleFonts.dmSans(
    textStyle: TextStyle(
      fontSize: 51.05.sp,
      fontWeight: FontWeightHelper.bold,
      color: Colors.white,
      letterSpacing: 0.1,
      height: 0.2,
    ),
  );

  static TextStyle font14WhiteBold = GoogleFonts.dmSans(
    textStyle: TextStyle(
      fontSize: 14.0.sp,
      color: Colors.white,
      fontWeight: FontWeightHelper.bold,
      letterSpacing: 0.2.sp,
    ),
  );
  static TextStyle font16WhiteMediumPoppins = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 16.0.sp,
      color: AppColors.lightBlack,
      fontWeight: FontWeightHelper.medium,
    ),
  );
  static TextStyle font20WhiteMediumPoppins = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 20.sp,
      color: Colors.white,
      fontWeight: FontWeightHelper.medium,
      letterSpacing: -0.3.sp,
    ),
  );
}
