import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../../../core/common_widgets/custom_image.dart';
import 'custom_text_widget.dart';

class CustomProfileAvatar extends StatelessWidget {
  final String? imagePath;
  final String profileName;
  final double width;
  final double height;
  final Color backgroundColor;
  final bool isOnline;

  const CustomProfileAvatar({
    super.key,
    this.imagePath,
    this.width = 50.0,
    this.height = 50.0,
    this.backgroundColor = Colors.grey,
    required this.profileName,
    this.isOnline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: width / 1.7,
              backgroundColor:
                  isOnline ? AppColors.onlineColor : AppColors.offlineColor,
              child: CircleAvatar(
                radius: width / 1.8,
                backgroundColor: AppColors.whiteColor,
                child: CircleAvatar(
                  radius: width / 2,
                  backgroundColor: backgroundColor,
                  child: ClipOval(
                    child: imagePath != null && imagePath!.isNotEmpty
                        ? CustomImage(
                            imagePath: imagePath!,
                            width: width,
                            height: height,
                            fit: BoxFit.cover,
                          )
                        : Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.white,
                          ),
                  ),
                ),
              ),
            ),
            if (isOnline)
              Positioned(
                bottom: 2,
                right: 4,
                child: CircleAvatar(
                    radius: 6, backgroundColor: AppColors.onlineColor),
              ),
          ],
        ),
        AppSizes.height4,
        CustomTextWidget(
          text: profileName,
          fontSize: AppSizes.fSize14,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
