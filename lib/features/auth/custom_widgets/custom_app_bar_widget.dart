import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_images.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../../../core/common_widgets/custom_text_widget.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final void Function()? onTap;
  final String? appBarTitle;
  final bool? logoRequired;
  final bool? automaticallyImplyLeading;

  const CustomAppBarWidget(
      {super.key,
      this.onTap,
      this.appBarTitle,
      this.logoRequired,
      this.automaticallyImplyLeading = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Padding(
          padding: AppSizes.horizontalPadding2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              automaticallyImplyLeading == true
                  ? GestureDetector(
                      onTap: onTap, child: Icon(Icons.arrow_back_ios))
                  : SizedBox.shrink(),
              CustomTextWidget(
                text: appBarTitle ?? "",
                color: AppColors.blackColor,
                fontSize: AppSizes.fSize20,
                fontWeight: FontWeight.bold,
              ),
              logoRequired == true
                  ? SvgPicture.asset(
                      AppImages.appLogoImage,
                    )
                  : SizedBox.shrink()
            ],
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
