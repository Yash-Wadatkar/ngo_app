import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class MessageBox extends StatelessWidget {
  final bool messageSent;
  final String message;
  final String receivedTime;
  final String selectedMessage;
  final String replyMessage;
  final bool isSelectedMessage;
  final bool isSentByMe;

  const MessageBox({
    super.key,
    required this.message,
    required this.receivedTime,
    this.messageSent = true,
    this.selectedMessage = '',
    this.replyMessage = '',
    this.isSelectedMessage = false,
    this.isSentByMe = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isSelectedMessage) {
      return Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        padding: EdgeInsets.all(AppSizes.wSize10),
        decoration: BoxDecoration(
          color: messageSent
              ? AppColors.primaryColor
              : AppColors.greyColor.withOpacity(0.1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSizes.hSize16),
            topRight: Radius.circular(AppSizes.hSize16),
            bottomRight:
                messageSent ? Radius.zero : Radius.circular(AppSizes.hSize16),
            bottomLeft:
                !messageSent ? Radius.zero : Radius.circular(AppSizes.hSize16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextWidget(
              text: isSentByMe ? "You" : "Sender",
              fontSize: 14,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
            AppSizes.height8,
            ClipPath(
              clipper: ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border(
                      left: BorderSide(
                        color: AppColors.primaryColor,
                        width: 4,
                      ),
                    )),
                child: CustomTextWidget(
                  text: selectedMessage,
                  fontSize: 14,
                ),
              ),
            ),
            AppSizes.height8,
            CustomTextWidget(
              text: replyMessage,
              fontSize: 13,
              color: messageSent
                  ? AppColors.backgroundColor
                  : AppColors.primaryColor,
            ),
            AppSizes.height6,
            CustomTextWidget(
              text: receivedTime,
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: messageSent
                  ? AppColors.backgroundColor
                  : AppColors.blackColor,
            ),
          ],
        ),
      );
    } else {
      return Align(
        alignment: messageSent ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.all(AppSizes.wSize10),
          margin: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            color: messageSent
                ? AppColors.primaryColor
                : AppColors.greyColor.withOpacity(0.1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppSizes.hSize16),
              topRight: Radius.circular(AppSizes.hSize16),
              bottomRight:
                  messageSent ? Radius.zero : Radius.circular(AppSizes.hSize16),
              bottomLeft: !messageSent
                  ? Radius.zero
                  : Radius.circular(AppSizes.hSize16),
            ),
          ),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextWidget(
                text: message,
                fontSize: 13,
                color: messageSent
                    ? AppColors.backgroundColor
                    : AppColors.primaryColor,
              ),
              AppSizes.height4,
              CustomTextWidget(
                text: receivedTime,
                fontSize: 10,
                fontWeight: FontWeight.normal,
                color: messageSent
                    ? AppColors.backgroundColor
                    : AppColors.blackColor,
              ),
            ],
          ),
        ),
      );
    }
  }
}
