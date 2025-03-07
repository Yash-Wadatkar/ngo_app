import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class CommonInputFieldWidget extends StatelessWidget {
  final String name;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool isPassword;
  final TextEditingController? controller;

  /// Reactive variable to handle password visibility
  final RxBool isPasswordVisible = false.obs;

  CommonInputFieldWidget({
    super.key,
    required this.name,
    required this.hintText,
    this.validator,
    this.keyboardType,
    this.isPassword = false,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      controller: controller,
      obscureText: isPassword ? !isPasswordVisible.value : false,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: AppColors.primaryColor,
      validator: validator,
      style: TextStyle(
        fontSize: AppSizes.fSize14,
        fontWeight: AppSizes.fontWeight500,
        color: AppColors.primaryColor,
      ),
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
        prefixIcon: prefixIcon,
        suffixIcon: isPassword ? _buildPasswordToggleIcon() : suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  /// Builds the password visibility toggle icon
  Widget _buildPasswordToggleIcon() {
    return InkWell(
        onTap: () => isPasswordVisible.value = !isPasswordVisible.value,
        child: Obx(
          () => Icon(
            isPasswordVisible.value
                ? FontAwesomeIcons.eye
                : FontAwesomeIcons.eyeSlash,
            size: AppSizes.hSize18,
            color: isPasswordVisible.value
                ? AppColors.primaryColor
                : AppColors.blackColor,
          ),
        ));
  }
}
