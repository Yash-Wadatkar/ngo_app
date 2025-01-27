import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/custom_image.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class DetailsCards extends StatelessWidget {
  final String title;
  final String subTitle;
  final String? image;

  const DetailsCards(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: AppColors.borderColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.boxColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                image != ""
                    ? CustomImage(
                        imagePath: image.toString(),
                      )
                    : SizedBox.shrink(),
                AppSizes.width10,
                CustomTextWidget(
                  text: title,
                  fontSize: 14,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: CustomTextWidget(
              text: subTitle,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
