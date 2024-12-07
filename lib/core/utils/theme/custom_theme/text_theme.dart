import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class TTextTheme {
  /// private constructor of the class to avoid creating instance
  TTextTheme._();

  /// customizable light text  theme
  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: AppColors.blackColor,
          fontSize: AppSizes.fSize25,
          fontWeight: AppSizes.fontWeight700),
      headlineMedium: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: AppColors.lightGreyColor,
          fontSize: AppSizes.fSize16,
          fontWeight: AppSizes.fontWeight500),
      bodySmall: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: AppColors.lightGreyColor,
          fontSize: AppSizes.fSize14,
          fontWeight: AppSizes.fontWeight500));

  /// customizable dark text  theme
  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: AppColors.whiteColor,
          fontSize: AppSizes.fSize25,
          fontWeight: AppSizes.fontWeight700),
      headlineMedium: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: AppColors.whiteColor,
          fontSize: AppSizes.fSize16,
          fontWeight: AppSizes.fontWeight500),
      bodySmall: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: AppColors.whiteColor,
          fontSize: AppSizes.fSize14,
          fontWeight: AppSizes.fontWeight500));
}
