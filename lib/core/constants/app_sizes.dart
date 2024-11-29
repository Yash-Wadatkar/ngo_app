import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

/* This class provides static references to commonly 
used sizes such as sizes, heights, widths, and paddings, 
utilizing the sizer package for responsive design. */

class AppSizes {
  /// Font size variables in percentage of screen height
  static double fSize2 = 2.sp;
  static double fSize4 = 4.sp;
  static double fSize6 = 6.sp;
  static double fSize8 = 8.sp;
  static double fSize10 = 10.sp;
  static double fSize12 = 12.sp;
  static double fSize14 = 14.sp;
  static double fSize16 = 16.sp;
  static double fSize18 = 18.sp;
  static double fSize20 = 20.sp;
  static double fSize22 = 22.sp;
  static double fSize24 = 24.sp;
  static double fSize26 = 26.sp;
  static double fSize28 = 28.sp;
  static double fSize30 = 30.sp;

  /// Heights as percentages of screen height
  static double hSize2 = 2.h;
  static double hSize4 = 4.h;
  static double hSize6 = 6.h;
  static double hSize8 = 8.h;
  static double hSize10 = 10.h;
  static double hSize12 = 12.h;
  static double hSize14 = 14.h;
  static double hSize16 = 16.h;
  static double hSize18 = 18.h;
  static double hSize20 = 20.h;

  /// Widths as percentages of screen width
  static double wSize2 = 2.w;
  static double wSize4 = 4.w;
  static double wSize6 = 6.w;
  static double wSize8 = 8.w;
  static double wSize10 = 10.w;
  static double wSize12 = 12.w;
  static double wSize14 = 14.w;
  static double wSize16 = 16.w;
  static double wSize18 = 18.w;
  static double wSize20 = 20.w;

  /// Radius sizes
  static double radius2 = 2.sp;
  static double radius4 = 4.sp;
  static double radius6 = 6.sp;
  static double radius8 = 8.sp;
  static double radius10 = 10.sp;
  static double radius20 = 20.sp;
  static double radius30 = 30.sp;

  /// SizedBox Heights
  static SizedBox height2 = SizedBox(height: 2.h);
  static SizedBox height4 = SizedBox(height: 4.h);
  static SizedBox height6 = SizedBox(height: 6.h);
  static SizedBox height8 = SizedBox(height: 8.h);
  static SizedBox height10 = SizedBox(height: 10.h);

  /// SizedBox Widths
  static SizedBox width2 = SizedBox(width: 2.w);
  static SizedBox width4 = SizedBox(width: 4.w);
  static SizedBox width6 = SizedBox(width: 6.w);
  static SizedBox width8 = SizedBox(width: 8.w);
  static SizedBox width10 = SizedBox(width: 10.w);

  /// Padding Sizes
  static EdgeInsets padding2 = EdgeInsets.all(2.sp);
  static EdgeInsets padding4 = EdgeInsets.all(4.sp);
  static EdgeInsets padding6 = EdgeInsets.all(6.sp);
  static EdgeInsets padding8 = EdgeInsets.all(8.sp);
  static EdgeInsets padding10 = EdgeInsets.all(10.sp);

  /// Symmetric Padding
  static EdgeInsets symmetricPadding2 =
      EdgeInsets.symmetric(horizontal: 2.sp, vertical: 2.sp);
  static EdgeInsets symmetricPadding4 =
      EdgeInsets.symmetric(horizontal: 4.sp, vertical: 4.sp);
  static EdgeInsets symmetricPadding6 =
      EdgeInsets.symmetric(horizontal: 6.sp, vertical: 6.sp);
  static EdgeInsets symmetricPadding8 =
      EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp);
  static EdgeInsets symmetricPadding10 =
      EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp);

  /// Horizontal Padding
  static EdgeInsets horizontalPadding2 = EdgeInsets.symmetric(horizontal: 2.w);
  static EdgeInsets horizontalPadding4 = EdgeInsets.symmetric(horizontal: 4.w);
  static EdgeInsets horizontalPadding6 = EdgeInsets.symmetric(horizontal: 6.w);
  static EdgeInsets horizontalPadding8 = EdgeInsets.symmetric(horizontal: 8.w);
  static EdgeInsets horizontalPadding10 =
      EdgeInsets.symmetric(horizontal: 10.w);

  /// Font Weights
  static FontWeight fontWeight300 = FontWeight.w300;
  static FontWeight fontWeight400 = FontWeight.w400;
  static FontWeight fontWeight500 = FontWeight.w500;
  static FontWeight fontWeight600 = FontWeight.w600;
  static FontWeight fontWeight700 = FontWeight.w700;
  static FontWeight fontWeight800 = FontWeight.w800;
  static FontWeight fontWeight900 = FontWeight.w900;
  static FontWeight fontWeightBold = FontWeight.bold;
}

class Dimension {
  static double fullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double fullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getPercentageHeight(double percentage) {
    return percentage.h;
  }

  static double getPercentageWidth(double percentage) {
    return percentage.w;
  }
}
