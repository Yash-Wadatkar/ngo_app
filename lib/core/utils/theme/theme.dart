import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/utils/theme/custom_theme/app_bar_theme.dart';
import 'package:ngo_app/core/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:ngo_app/core/utils/theme/custom_theme/icons_theme.dart';
import 'package:ngo_app/core/utils/theme/custom_theme/text_theme.dart';

class TAppTheme {
  /// private constructor of the class to avoid creating instance
  TAppTheme._();

  /// theme setup for light theme
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      brightness: Brightness.light,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.whiteColor,
      textTheme: TTextTheme.lightTextTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      iconTheme: TIconsTheme.lightIconTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme);

  /// theme setup for dark theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.blackColor,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      iconTheme: TIconsTheme.darkIconTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      textTheme: TTextTheme.darkTextTheme);
}
