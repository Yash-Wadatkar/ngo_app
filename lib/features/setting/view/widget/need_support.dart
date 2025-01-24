import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';

class NeedSupportWidget extends StatelessWidget {
  const NeedSupportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextWidget(
          text: "Need Help? ",
          color: AppColors.greyColor,
          fontSize: 13,
        ),
        CustomTextWidget(
          text: "Contact Support ",
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w800,
          fontSize: 13,
        ),
        Icon(
          FontAwesomeIcons.phoneVolume,
          color: AppColors.primaryColor,
          size: 13,
        ),
      ],
    );
  }
}
