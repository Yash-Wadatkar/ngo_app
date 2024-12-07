import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

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
      label: SizedBox(
        height: AppSizes.hSize4, // Set desired height
        width: AppSizes.wSize16, // Set desired width
        child: SvgPicture.asset(assetPath),
      ),
      onSelected: (value) => onSelected(),
    );
  }
}
