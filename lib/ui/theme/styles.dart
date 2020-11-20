import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/r.g.dart';
import 'package:furniture_app/ui/theme/colors.dart';

class AppStyles {
  static TextStyle bannerCategory = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w300,
  );
  static TextStyle bannerTitle = TextStyle(
    fontFamily: R.fontFamily.playfair,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 0.9,
  );
  static TextStyle bannerDes = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle productTitle = TextStyle(
    fontFamily: R.fontFamily.playfair,
    fontSize: 14.sp,
    color: Colors.black,
    height: 0.9,
  );
  static TextStyle productDes = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black.withOpacity(0.4),
  );
  static TextStyle productPrice = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.accent,
  );
  static TextStyle sectionTitle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );
}
