import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class ApplicationTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Nunito',
    brightness: Brightness.light,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 45.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.white
      ),
      headlineMedium: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.white
      ),
      titleLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.white
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.white
      ),
      titleSmall: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.white
      ),
      bodyLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.black
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.black
      ),
      bodySmall: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.black
      ),
  ));
}