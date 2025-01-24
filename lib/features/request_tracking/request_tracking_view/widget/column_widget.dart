import 'package:flutter/material.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/constants/app_colors.dart';

class ColumnWidget extends StatelessWidget {
  final String title;
  final String subTitle;

  const ColumnWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          text: title,
          fontSize: 12,
          color: AppColors.whiteColor,
        ),
        CustomTextWidget(
          text: subTitle,
          fontSize: 10,
          fontWeight: FontWeight.normal,
          color: AppColors.whiteColor,
        ),
      ],
    );
  }
}
