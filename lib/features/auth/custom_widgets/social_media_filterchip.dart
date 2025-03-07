import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/custom_image.dart';
import 'package:ngo_app/core/constants/app_colors.dart';

class SocialMediaFilterChip extends StatelessWidget {
  final String assetPath;
  final VoidCallback onSelected;

  const SocialMediaFilterChip({
    required this.assetPath,
    required this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      checkmarkColor: AppColors.whiteColor,
      label: CustomImage(
        imagePath: assetPath,
        isSvg: true,
      ),
      onSelected: (value) => onSelected(),
    );
  }
}
