import 'package:flutter/material.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/constants/app_colors.dart';

class ProfileAppBar extends StatelessWidget {
  final VoidCallback onBackTap;
  final VoidCallback onShareTap;

  const ProfileAppBar({
    super.key,
    required this.onBackTap,
    required this.onShareTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onBackTap,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: AppColors.greyColor,
              ),
            ),
          ),
          CustomTextWidget(
            text: "Profile",
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          InkWell(
            onTap: onShareTap,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Icon(
                Icons.share,
                color: AppColors.greyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
