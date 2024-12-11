import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../constants/app_colors.dart';
import 'common_title_subtitle_text.dart';
import 'custom_image.dart';
import 'custom_text_widget.dart';

class CustomProfileListContent extends StatelessWidget {
  final String? imagePath;
  final String profileName;
  final String? noOfMsg;
  final String profileMessage;
  final String msgTime;
  final double width;
  final double height;
  final Color backgroundColor;
  final bool isOnline;

  const CustomProfileListContent({
    super.key,
    this.imagePath,
    this.width = 45.0,
    this.height = 45.0,
    this.backgroundColor = Colors.grey,
    this.isOnline = true,
    required this.profileName,
    required this.profileMessage,
    required this.msgTime,
    this.noOfMsg,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 0,
          child: Stack(
            children: [
              CircleAvatar(
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
              if (isOnline)
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: CircleAvatar(
                      radius: 5, backgroundColor: AppColors.onlineColor),
                ),
            ],
          ),
        ),
        AppSizes.width15,
        Expanded(
            child: TitleSubtitleInColumn(
          title: profileName,
          subTitle: profileMessage,
        )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomTextWidget(
              text: msgTime,
              fontWeight: FontWeight.w200,
              fontSize: 12,
            ),
            AppSizes.height4,
            CircleAvatar(
              radius: 10,
              backgroundColor: AppColors.onlineColor,
              child: CustomTextWidget(
                text: noOfMsg ?? "",
                fontWeight: FontWeight.bold,
                fontSize: 10,
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
