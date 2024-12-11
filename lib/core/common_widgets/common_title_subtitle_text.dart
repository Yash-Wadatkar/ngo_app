import 'package:flutter/cupertino.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class TitleSubtitleInColumn extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool unread;

  const TitleSubtitleInColumn({
    super.key,
    required this.title,
    required this.subTitle,
    this.unread = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          text: title,
          fontSize: AppSizes.fSize16,
          color: AppColors.blackColor,
        ),
        CustomTextWidget(
          text: subTitle,
          fontSize: AppSizes.fSize12,
          fontWeight: unread ? FontWeight.bold : FontWeight.normal,
          color: AppColors.greyColor,
        ),
      ],
    );
  }
}
