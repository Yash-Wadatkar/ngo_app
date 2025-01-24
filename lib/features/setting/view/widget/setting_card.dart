import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class SettingCard extends StatelessWidget {
  final String name;
  final String description;
  final IconData icon;
  final void Function() routes;

  const SettingCard(
      {super.key,
      required this.name,
      required this.description,
      required this.icon,
      required this.routes});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: routes,
      child: Card(
        color: AppColors.whiteColor,
        elevation: 0.5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Icon(
                    icon,
                    color: AppColors.whiteColor,
                  )),
              AppSizes.height30,
              Flexible(
                child: CustomTextWidget(
                  text: name,
                  fontWeight: FontWeight.w800,
                  fontSize: AppSizes.fSize16,
                  overflow: TextOverflow.visible,
                ),
              ),
              Flexible(
                child: CustomTextWidget(
                  text: description,
                  overflow: TextOverflow.visible,
                  fontSize: AppSizes.fSize12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
