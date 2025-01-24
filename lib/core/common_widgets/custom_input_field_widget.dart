import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class CommonInputFieldWidget extends StatelessWidget {
  final String name;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextEditingController? controller;

  const CommonInputFieldWidget({
    super.key,
    required this.name,
    required this.hintText,
    this.suffixIcon,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.controller,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
        name: name,
        style: TextStyle(
          fontSize: AppSizes.fSize14,
          fontWeight: AppSizes.fontWeight500,
          color: AppColors.primaryColor,
        ),
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        cursorColor: AppColors.primaryColor,
        obscureText: obscureText,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          focusColor: AppColors.primaryColor,
          contentPadding: AppSizes.padding16,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: AppSizes.fSize14,
            fontWeight: AppSizes.fontWeight500,
            color: AppColors.primaryColor,
          ),
          fillColor: AppColors.textFieldFillColor,
          filled: true,
          prefixIcon: prefixIcon ?? const SizedBox.shrink(),
          suffixIcon: suffixIcon ?? const SizedBox(),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20)),
        ));
  }
}
