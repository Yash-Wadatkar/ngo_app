import 'package:flutter/material.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

import '../../../core/common_widgets/common_text_button.dart';
import '../../../core/common_widgets/custom_text_widget.dart';

Future<void> showConfirmationDialog(
  BuildContext context, {
  required String title,
  required String content,
  required String confirmButtonText,
  required String cancelButtonText,
  required VoidCallback onConfirm,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.whiteColor,
        title: CustomTextWidget(
          text: title,
          fontSize: AppSizes.fSize20,
        ),
        content: CustomTextWidget(
          text: content,
          fontSize: AppSizes.fSize16,
        ),
        actions: <Widget>[
          CommonTextButton(
            buttonText: cancelButtonText,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CommonTextButton(
            buttonText: confirmButtonText,
            onPressed: () {
              onConfirm();
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
