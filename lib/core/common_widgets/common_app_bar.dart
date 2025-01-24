import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';

import '../constants/app_colors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;

  const CommonAppBar({
    super.key,
    required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      primary: false,
      centerTitle: true, // Ensures the title is centered
      title: CustomTextWidget(
        text: appBarTitle,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      leading: InkWell(
        onTap: () {
          context.maybePop();
        },
        child: CircleAvatar(
          backgroundColor: AppColors.whiteColor,
          child: Icon(
            Icons.keyboard_arrow_left,
            color: AppColors.greyColor,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
