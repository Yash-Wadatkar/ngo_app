import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';

import 'custom_text_widget.dart';

class CommonFilterCard extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final bool isSelected;

  const CommonFilterCard({
    super.key,
    required this.title,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : Colors.grey,
            width: 0.5,
          ),
        ),
        child: Center(
          child: CustomTextWidget(
            text: title,
            color: isSelected ? AppColors.whiteColor : AppColors.blackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
