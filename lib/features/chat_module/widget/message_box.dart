import 'package:flutter/cupertino.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class MessageBox extends StatelessWidget {
  final bool messageSent;
  final String message;
  final String receivedTime;

  const MessageBox({
    super.key,
    this.messageSent = true,
    required this.message,
    required this.receivedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: messageSent ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(AppSizes.wSize12),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color:
              messageSent ? AppColors.primaryColor : AppColors.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSizes.hSize16),
            topRight: Radius.circular(AppSizes.hSize16),
            bottomRight:
                messageSent ? Radius.zero : Radius.circular(AppSizes.hSize16),
            bottomLeft:
                !messageSent ? Radius.zero : Radius.circular(AppSizes.hSize16),
          ),
        ),
        constraints: BoxConstraints(
          maxWidth:
              MediaQuery.of(context).size.width * 0.7, // Dynamic width limit
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Message text
            CustomTextWidget(
              text: message,
              fontSize: AppSizes.fSize14,
              color: messageSent
                  ? AppColors.backgroundColor
                  : AppColors.primaryColor,
            ),
            AppSizes.height4, // Spacing before the time
            CustomTextWidget(
              text: receivedTime,
              fontSize: AppSizes.fSize12,
              fontWeight: FontWeight.normal,
              color: messageSent
                  ? AppColors.backgroundColor
                  : AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
