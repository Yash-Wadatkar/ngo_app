import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class CustomInputFieldWidget extends StatelessWidget {
  final String name;
  final String hintText;
  final Widget? icon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomInputFieldWidget({
    super.key,
    required this.name,
    required this.hintText,
    this.icon,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.controller,
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
          suffixIcon: icon ?? const SizedBox(),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ));
  }
}
