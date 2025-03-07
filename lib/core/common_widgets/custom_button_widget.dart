import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonLabel;
  final void Function()? onTap;
  const CustomButtonWidget({super.key, required this.buttonLabel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppSizes.hSize50,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.radius10))),
              backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor)),
          onPressed: onTap,
          child: Padding(
            padding: AppSizes.padding12,
            child: Text(
              overflow: TextOverflow.ellipsis,
              buttonLabel,
              style: GoogleFonts.urbanist(
                  fontSize: AppSizes.fSize14, color: AppColors.whiteColor),
            ),
          )),
    );
  }
}
