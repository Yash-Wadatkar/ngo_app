import 'package:flutter/material.dart';
import 'package:ngo_app/core/common_widgets/custom_text_widget.dart';
import 'package:ngo_app/core/constants/app_colors.dart';
import 'package:ngo_app/core/constants/app_sizes.dart';

class SelectedMessageBox extends StatelessWidget {
  final String selectedMessage;
  final String replyMessage;
  final bool isSentByMe;
  final String time;

  const SelectedMessageBox({
    super.key,
    required this.selectedMessage,
    required this.replyMessage,
    required this.isSentByMe,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppSizes.wSize10, vertical: AppSizes.hSize8),
      padding: EdgeInsets.all(AppSizes.wSize10),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSizes.hSize16),
          topRight: Radius.circular(AppSizes.hSize16),
          bottomRight:
              isSentByMe ? Radius.zero : Radius.circular(AppSizes.hSize16),
          bottomLeft:
              !isSentByMe ? Radius.zero : Radius.circular(AppSizes.hSize16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    color: AppColors.messageSelectedBoxColor,
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
              )),
          AppSizes.height8,
          CustomTextWidget(
            text: replyMessage,
            fontSize: 12,
          ),
          AppSizes.height6,
          Align(
            alignment: Alignment.bottomRight,
            child: CustomTextWidget(
              text: time,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
