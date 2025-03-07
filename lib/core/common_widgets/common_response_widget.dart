import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../constants/app_colors.dart';

class CommonSnackBarWithResponse {
  late String title;
  bool isSuccessDialog;

  CommonSnackBarWithResponse(
      {required this.title, this.isSuccessDialog = true}) {
    showSnackBar();
  }

  void showSnackBar() {
    final snackBar = SnackBar(
        duration: const Duration(milliseconds: 3500),
        content: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
              isSuccessDialog
                  ? Icons.check_circle_outline
                  : Icons.cancel_outlined,
              color: AppColors.whiteColor,
              size: AppSizes.hSize14),
          AppSizes.width8,
          Flexible(
              child: CustomTextWidget(
                  text: title,
                  color: AppColors.whiteColor,
                  textAlign: TextAlign.start,
                  fontSize: AppSizes.fSize12.sp,
                  fontWeight: FontWeight.w600))
        ]),
        backgroundColor: isSuccessDialog
            ? AppColors.successSnackBarColor
            : AppColors.errorSnackBarColor,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radius8.r)),
        width: Get.width);
    ScaffoldMessenger.of(Get.context as BuildContext).hideCurrentSnackBar();
    ScaffoldMessenger.of(Get.context as BuildContext).showSnackBar(snackBar);
  }
}
