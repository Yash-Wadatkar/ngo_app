import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:pinput/pinput.dart';

class CustomPinPutField extends StatelessWidget {
  const CustomPinPutField({super.key});

  @override
  Widget build(BuildContext context) {
    final pinTheme = PinTheme(
      width: 70, // Increase the width of each box
      height: 60, // Increase the height of each box
      textStyle: TextStyle(
        fontSize: 20, // Increase font size
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),

      decoration: BoxDecoration(
        color: AppColors.whiteColor, // Background color
        borderRadius: BorderRadius.circular(8), // Rounded corners
        border: Border.all(
            color: AppColors.primaryColor, width: 1.5), // Border color
      ),
    );

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        defaultPinTheme: pinTheme, // Apply the custom theme
        length: 4, // Number of boxes (e.g., for 6-digit PIN)
        showCursor: true, // Show a blinking cursor
      ),
    );
  }
}
