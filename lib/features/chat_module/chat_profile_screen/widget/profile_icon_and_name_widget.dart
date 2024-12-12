import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../widget/custom_profile_icon.dart';

class ProfileIconAndNameWidget extends StatelessWidget {
  final String name;
  final VoidCallback onUserTap;
  final VoidCallback onBlockTap;

  const ProfileIconAndNameWidget({
    super.key,
    required this.name,
    required this.onUserTap,
    required this.onBlockTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomProfileIcon(
            size: 25,
          ),
          AppSizes.width10,
          CustomTextWidget(
            text: name,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          const Spacer(),
          InkWell(
            onTap: onUserTap,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.tertiaryColor.withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Icon(
                FontAwesomeIcons.user,
                color: AppColors.whiteColor,
                size: 16,
              ),
            ),
          ),
          AppSizes.width10,
          InkWell(
            onTap: onBlockTap,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.tertiaryColor.withOpacity(0.5),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Icon(
                Icons.not_interested,
                color: AppColors.whiteColor,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
