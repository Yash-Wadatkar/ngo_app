import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class CustomInputFieldWidget extends StatelessWidget {
  final String hintText;
  final Widget? icon;
  const CustomInputFieldWidget({
    super.key,
    required this.hintText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSizes.hSize2),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: AppSizes.padding16,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: AppSizes.fSize14,
              fontWeight: AppSizes.fontWeight500,
              color: AppColors.lightGreyColor),
          fillColor: const Color(0xffF7F8F9),
          filled: true,
          suffixIcon: icon ?? SizedBox(),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xffE8ECF4), width: 2), // Dynamic border color
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xffE8ECF4), width: 2), // Focused border color
            borderRadius: BorderRadius.all(Radius.circular(AppSizes.radius12)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xffE8ECF4), width: 2), // Enabled border color
            borderRadius: BorderRadius.all(Radius.circular(AppSizes.radius12)),
          ),
        ),
      ),
    );
  }
}
