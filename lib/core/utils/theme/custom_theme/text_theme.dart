import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class TTextTheme {
  /// private constructor of the class to avoid creating instance
  TTextTheme._();

  /// customizable light text  theme
  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: TextStyle(
          color: AppColors.blackColor,
          fontSize: AppSizes.fSize30,
          fontWeight: AppSizes.fontWeight700));

  /// customizable dark text  theme
  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: TextStyle(
          color: AppColors.whiteColor,
          fontSize: AppSizes.fSize30,
          fontWeight: AppSizes.fontWeight700));
}
